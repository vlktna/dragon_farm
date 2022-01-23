package com.dragon.farm.coursework.data.enum

import com.fasterxml.jackson.annotation.JsonProperty

enum class DragonStatus(val typeName: String) {
    @JsonProperty("alive") ALIVE("alive"),
    @JsonProperty("escaped") ESCAPED("escaped"),
    @JsonProperty("death_from_old_age") DEATH_FROM_OLD_AGE("death_from_old_age"),
    @JsonProperty("death_due_to_poor_care") DEATH_DUE_TO_POOR_CARE("death_due_to_poor_care")
}
