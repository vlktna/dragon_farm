package com.dragon.farm.coursework.data.enum

import com.fasterxml.jackson.annotation.JsonProperty

enum class Season(val typeName: String) {
    @JsonProperty("summer") SUMMER("summer"),
    @JsonProperty("autumn") AUTUMN("autumn"),
    @JsonProperty("winter") WINTER("winter"),
    @JsonProperty("spring") SPRING("spring")
}