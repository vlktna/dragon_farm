package com.dragon.farm.coursework.data.service

import com.dragon.farm.coursework.data.repository.DragonCharacteristicRepository
import com.dragon.farm.coursework.endpoint.dto.dragon.DragonCharacteristicsResponse
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class DragonCharacteristicService @Autowired constructor(
    private val dragonCharacteristicRepository: DragonCharacteristicRepository,
) {

    fun getCharacteristics(id: Long): List<DragonCharacteristicsResponse> {
        return dragonCharacteristicRepository.findByDragonId(id)
            .map { DragonCharacteristicsResponse(it.charType, it.value) }
    }
}