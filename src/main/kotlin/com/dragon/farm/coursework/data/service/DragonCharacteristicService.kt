package com.dragon.farm.coursework.data.service

import com.dragon.farm.coursework.data.entitity.DragonCharacteristicEntity
import com.dragon.farm.coursework.data.enum.ActionType
import com.dragon.farm.coursework.data.repository.ActionTypeInfluenceRepository
import com.dragon.farm.coursework.data.repository.DragonCharacteristicRepository
import com.dragon.farm.coursework.endpoint.dto.dragon.DragonCharacteristicsResponse
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import javax.transaction.Transactional

@Service
class DragonCharacteristicService @Autowired constructor(
    private val dragonCharacteristicRepository: DragonCharacteristicRepository,
    private val influenceRepository: ActionTypeInfluenceRepository
) {

    fun getCharacteristics(id: Long): List<DragonCharacteristicsResponse> {
        return dragonCharacteristicRepository.findByDragonId(id)
            .map { DragonCharacteristicsResponse(it.charType, it.value) }
    }

    @Transactional
    fun updateCharacteristics(dragonId: Long, actionType: ActionType) {
        influenceRepository.findAll().filter { it.actionType == actionType }.forEach { actionTypeInfl ->
            val curChar =
                dragonCharacteristicRepository.findByDragonId(dragonId).first { it.charType == actionTypeInfl.charType }
            val newChar = DragonCharacteristicEntity()
            newChar.charType = curChar.charType
            newChar.dragonId = curChar.dragonId
            newChar.value = curChar.value!! + actionTypeInfl.influenceValue!!
            dragonCharacteristicRepository.delete(curChar)
            dragonCharacteristicRepository.save(newChar)
        }
    }
}