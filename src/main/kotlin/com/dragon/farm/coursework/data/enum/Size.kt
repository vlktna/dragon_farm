package com.dragon.farm.coursework.data.enum

import com.fasterxml.jackson.annotation.JsonProperty

enum class Size(val typeName: String) {
    @JsonProperty("small") SMALL("small"),
    @JsonProperty("medium") MEDIUM("medium"),
    @JsonProperty("large") LARGE("large"),
    @JsonProperty("gigantic") GIGANTIC("gigantic")
}