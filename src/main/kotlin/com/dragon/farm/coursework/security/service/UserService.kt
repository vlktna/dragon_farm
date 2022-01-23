package com.dragon.farm.coursework.security.service

import com.dragon.farm.coursework.security.entity.UserDetailsEntity
import com.dragon.farm.coursework.security.entity.UserDetailsRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.HttpStatus
import org.springframework.security.crypto.password.PasswordEncoder
import org.springframework.stereotype.Service
import org.springframework.web.server.ResponseStatusException
import javax.transaction.Transactional

@Service
class UserService @Autowired constructor(
    private val userRepository: UserDetailsRepository,
    private val encoder: PasswordEncoder
) {

    fun findByUserName(userName: String): UserDetailsEntity {
        return userRepository.findByUserName(userName) ?: throw ResponseStatusException(
            HttpStatus.NOT_FOUND,
            "User $userName not found"
        )
    }

    @Transactional
    fun save(user: UserDetailsEntity): UserDetailsEntity {
        user.password = encoder.encode(user.password)
        return userRepository.save(user)
    }

    fun existsByUserName(userName: String): Boolean {
        if (userRepository.findByUserName(userName) == null) {
            return false
        }
        return true
    }
}