package com.dragon.farm.coursework.endpoint.dto.dragon

import com.dragon.farm.coursework.data.enum.DragonStatus

data class ActionResponse(val dragonId: Long?, val dragonStatus: DragonStatus?, val dragonCharacteristics: DragonCharacteristicsResponse?)