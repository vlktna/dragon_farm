package com.dragon.farm.coursework.data.enum

import com.fasterxml.jackson.annotation.JsonProperty

enum class DragonCharacteristic(val typeName: String) {
    @JsonProperty("health") HEALTH("health"),
    @JsonProperty("training") TRAINING("training"),
    @JsonProperty("happiness") HAPPINESS("happiness")
}