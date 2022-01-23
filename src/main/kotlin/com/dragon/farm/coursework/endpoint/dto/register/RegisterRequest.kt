package com.dragon.farm.coursework.endpoint.dto.register

import com.dragon.farm.coursework.data.enum.Gender
import java.util.*

data class RegisterRequest(
    val name: String,
    val surname: String,
    val gender: Gender,
    val dateOfBirth: Date,
    val userName: String,
    val password: String
)
