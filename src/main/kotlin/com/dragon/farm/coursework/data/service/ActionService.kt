package com.dragon.farm.coursework.data.service

import com.dragon.farm.coursework.data.enum.DragonStatus
import com.dragon.farm.coursework.data.repository.DragonRepository
import com.dragon.farm.coursework.endpoint.dto.dragon.ActionRequest
import com.dragon.farm.coursework.endpoint.dto.dragon.ActionResponse
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service
import javax.transaction.Transactional

@Service
class ActionService @Autowired constructor(
    private val dragonCharacteristicService: DragonCharacteristicService,
    private val dragonRepository: DragonRepository
) {

    @Transactional
    fun newAction(action: ActionRequest, workerId: Long): ActionResponse {
        val curDragon = dragonRepository.findById(action.dragonId).get()

        if (curDragon.dragonStatus == DragonStatus.ALIVE) {
            dragonCharacteristicService.updateCharacteristics(action.dragonId, action.actionType)
            val characteristics = dragonCharacteristicService.getCharacteristics(action.dragonId)

            curDragon.trainingLevel = dragonRepository.getTrainingLevel(characteristics.training)

            if (characteristics.happiness <= 0) {
                curDragon.dragonStatus = DragonStatus.ESCAPED
                dragonRepository.save(curDragon)
                return ActionResponse(
                    action.dragonId,
                    DragonStatus.ESCAPED,
                    dragonCharacteristicService.getCharacteristics(action.dragonId)
                )
            }
            if (characteristics.health <= 0) {
                curDragon.dragonStatus = DragonStatus.DEATH_DUE_TO_POOR_CARE
                dragonRepository.save(curDragon)
                return ActionResponse(
                    action.dragonId,
                    DragonStatus.DEATH_DUE_TO_POOR_CARE,
                    dragonCharacteristicService.getCharacteristics(action.dragonId)
                )
            }
        }

        return ActionResponse(
            action.dragonId,
            curDragon.dragonStatus,
            dragonCharacteristicService.getCharacteristics(action.dragonId)
        )
    }
}