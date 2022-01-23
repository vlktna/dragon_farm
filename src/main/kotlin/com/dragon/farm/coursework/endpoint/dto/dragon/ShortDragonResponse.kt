package com.dragon.farm.coursework.endpoint.dto.dragon

data class ShortDragonResponse(
    val id: Long?,
    val name: String?,
    val dragonCharacteristics: List<DragonCharacteristicsResponse>?,
)