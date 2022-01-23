package com.dragon.farm.coursework.data.enum

import com.fasterxml.jackson.annotation.JsonProperty

enum class WorkerType(val typeName: String) {
    @JsonProperty("tamer") TAMER("tamer"),
    @JsonProperty("caretaker") CARETAKER("caretaker"),
    @JsonProperty("researcher") RESEARCHER("researcher"),
    @JsonProperty("nanny") NANNY("nanny")
}