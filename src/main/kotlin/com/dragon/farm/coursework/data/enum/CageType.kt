package com.dragon.farm.coursework.data.enum

import com.fasterxml.jackson.annotation.JsonProperty

enum class CageType(val typeName: String) {
    @JsonProperty("general") GENERAL("general"),
    @JsonProperty("incubator") INCUBATOR("incubator"),
    @JsonProperty("nursery") NURSERY("nursery"),
    @JsonProperty("couple") COUPLE("couple")
}