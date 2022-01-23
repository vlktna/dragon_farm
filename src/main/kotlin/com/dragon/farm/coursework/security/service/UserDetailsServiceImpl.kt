package com.dragon.farm.coursework.security.service

import com.dragon.farm.coursework.security.entity.UserDetailsEntity
import com.dragon.farm.coursework.security.entity.UserDetailsImpl
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.security.core.userdetails.UsernameNotFoundException
import org.springframework.stereotype.Service

@Service
class UserDetailsServiceImpl @Autowired constructor(private val userService: UserService): UserDetailsService {

    @Throws(UsernameNotFoundException::class)
    override fun loadUserByUsername(userName: String): UserDetails {
        val user: UserDetailsEntity = userService.findByUserName(userName)
        return UserDetailsImpl(user)
    }
}