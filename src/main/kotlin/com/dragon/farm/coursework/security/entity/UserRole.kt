package com.dragon.farm.coursework.security.entity

import com.fasterxml.jackson.annotation.JsonProperty

enum class UserRole {
    @JsonProperty("user") USER,
    @JsonProperty("worker") WORKER,
}