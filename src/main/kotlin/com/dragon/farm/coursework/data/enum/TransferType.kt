package com.dragon.farm.coursework.data.enum

import com.fasterxml.jackson.annotation.JsonProperty

enum class TransferType(val typeName: String) {
    @JsonProperty("permanent") PERMANENT("permanent"),
    @JsonProperty("temporal") TEMPORAL("temporal")
}