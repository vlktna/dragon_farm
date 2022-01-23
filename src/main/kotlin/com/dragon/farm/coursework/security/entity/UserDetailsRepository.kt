package com.dragon.farm.coursework.security.entity

import org.springframework.data.jpa.repository.JpaRepository

interface UserDetailsRepository: JpaRepository<UserDetailsEntity, Long> {
    fun findByUserName(userName: String?): UserDetailsEntity?
}