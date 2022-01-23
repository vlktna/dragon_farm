package com.dragon.farm.coursework.endpoint

import com.dragon.farm.coursework.data.entitity.PeopleEntity
import com.dragon.farm.coursework.data.enum.Gender
import com.dragon.farm.coursework.data.service.PeopleService
import com.dragon.farm.coursework.security.service.UserService
import com.dragon.farm.coursework.security.config.Token
import com.dragon.farm.coursework.endpoint.dto.login.LoginRequest
import com.dragon.farm.coursework.endpoint.dto.login.LoginResponse
import com.dragon.farm.coursework.endpoint.dto.register.RegisterRequest
import com.dragon.farm.coursework.security.entity.UserDetailsEntity
import com.dragon.farm.coursework.security.entity.UserRole
import com.dragon.farm.coursework.security.service.UserDetailsServiceImpl
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.security.authentication.AuthenticationManager
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.web.bind.annotation.CrossOrigin
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.server.ResponseStatusException
import java.util.*
import javax.transaction.Transactional

@RestController
@CrossOrigin(origins = ["*"], allowedHeaders = ["*"])
@RequestMapping("/user")
class UserController @Autowired constructor(
    private val userService: UserService,
    private val authenticationManager: AuthenticationManager,
    private val userDetailsService: UserDetailsServiceImpl,
    private val tokenUtil: Token,
    private val peopleService: PeopleService
) {

    @PostMapping("/login")
    fun login(@RequestBody user: LoginRequest): ResponseEntity<LoginResponse> {
        authenticationManager.authenticate(UsernamePasswordAuthenticationToken(user.userName, user.password))

        val newUser = userService.findByUserName(user.userName)
        val person = peopleService.getPersonById(newUser.personId!!)

        return ResponseEntity<LoginResponse>(
            LoginResponse(
                newUser.id,
                newUser.userName,
                person.name,
                person.surname,
                peopleService.getUserRole(person.id!!),
                getJwt(user.userName)
            ), HttpStatus.OK
        )
    }

    @Transactional
    @PostMapping("/register")
    fun register(@RequestBody userRequest: RegisterRequest): ResponseEntity<LoginResponse> {
        if (userService.existsByUserName(userRequest.userName)) {
            throw ResponseStatusException(
                HttpStatus.CONFLICT,
                "User ${userRequest.userName} already exists"
            )
        }

        val newPerson = peopleService.save(PeopleEntity().apply {
            name = userRequest.name
            surname = userRequest.surname
            gender = Gender.MALE
            reputation = 0
            dateOfBirth = Date()
        })

        val newUser = userService.save(UserDetailsEntity().apply {
            userName = userRequest.userName
            password = userRequest.password
            role = UserRole.USER
            personId = newPerson.id
        })

        return ResponseEntity<LoginResponse>(
            LoginResponse(
                newUser.id,
                newUser.userName,
                newPerson.name,
                newPerson.surname,
                newUser.role,
                getJwt(userRequest.userName)
            ), HttpStatus.OK
        )
    }

    private fun getJwt(userName: String): String {
        val newUser = userService.findByUserName(userName)
        val userDetails: UserDetails = userDetailsService.loadUserByUsername(userName)
        return tokenUtil.generateToken(userDetails, newUser.id!!)
    }
}