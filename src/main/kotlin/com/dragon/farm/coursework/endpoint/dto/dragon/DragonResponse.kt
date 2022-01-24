package com.dragon.farm.coursework.endpoint.dto.dragon

import com.dragon.farm.coursework.data.enum.DragonStatus
import com.dragon.farm.coursework.data.enum.Gender
import com.dragon.farm.coursework.data.enum.TrainingLevel
import java.util.*

data class DragonResponse(
    val id: Long?,
    val name: String?,
    val trainingLevel: TrainingLevel?,
    val typeName: String?,
    val className: String?,
    val dateOfBirth: Date?,
    val dateOfDeath: Date?,
    val gender: Gender?,
    val cageId: Long?,
    val dragonStatus: DragonStatus?,
    val dragonCharacteristics: DragonCharacteristicsResponse?,
    val abilities: List<String>?,
    val dragonAppearance: DragonAppearanceResponse?
)
