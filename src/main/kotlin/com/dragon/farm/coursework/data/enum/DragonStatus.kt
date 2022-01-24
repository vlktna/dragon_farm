package com.dragon.farm.coursework.data.enum

import com.fasterxml.jackson.annotation.JsonProperty

enum class DragonStatus(val typeName: String) {
    @JsonProperty("alive") ALIVE("alive"),
    @JsonProperty("escaped") ESCAPED("escaped"),
    @JsonProperty("death from old age") DEATH_FROM_OLD_AGE("death from old age"),
    @JsonProperty("death due to poor care") DEATH_DUE_TO_POOR_CARE("death due to poor care")
}
