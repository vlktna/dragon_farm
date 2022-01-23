package com.dragon.farm.coursework.endpoint.dto.login

import com.dragon.farm.coursework.security.entity.UserRole

data class LoginResponse(
    var id: Long?,
    val userName: String?,
    val name: String?,
    val surname: String?,
    val role: UserRole?,
    val jwt: String,
)
