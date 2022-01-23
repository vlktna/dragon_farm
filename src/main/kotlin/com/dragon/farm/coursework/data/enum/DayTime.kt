package com.dragon.farm.coursework.data.enum

import com.fasterxml.jackson.annotation.JsonProperty

enum class DayTime(val typeName: String) {
    @JsonProperty("day") DAY("day"),
    @JsonProperty("night") NIGHT("night")
}