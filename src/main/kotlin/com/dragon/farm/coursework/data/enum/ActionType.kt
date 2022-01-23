package com.dragon.farm.coursework.data.enum

import com.fasterxml.jackson.annotation.JsonProperty

enum class ActionType(val typeName: String) {
    @JsonProperty("feed") FEED("feed"),
    @JsonProperty("play") PLAY("play"),
    @JsonProperty("train") TRAIN("train"),
    @JsonProperty("scold") SCOLD("scold"),
    @JsonProperty("hit") HIT("hit"),
    @JsonProperty("treat") TREAT("treat")
}