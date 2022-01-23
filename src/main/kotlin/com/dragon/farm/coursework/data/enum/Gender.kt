package com.dragon.farm.coursework.data.enum

import com.fasterxml.jackson.annotation.JsonProperty

enum class Gender(val typeName: String) {
    @JsonProperty("male") MALE("male"),
    @JsonProperty("female") FEMALE("female")
}