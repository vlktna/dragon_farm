package com.dragon.farm.coursework.data.enum

import com.fasterxml.jackson.annotation.JsonProperty

enum class TrainingLevel(val typeName: String) {
    @JsonProperty("wild") WILD("wild"),
    @JsonProperty("elementary") ELEMENTARY("elementary"),
    @JsonProperty("intermediate") INTERMEDIATE("intermediate"),
    @JsonProperty("advanced") ADVANCED("advanced")
}