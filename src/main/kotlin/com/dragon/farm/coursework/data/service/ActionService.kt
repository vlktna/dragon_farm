package com.dragon.farm.coursework.data.service

import com.dragon.farm.coursework.data.enum.DragonCharacteristic
import com.dragon.farm.coursework.data.enum.DragonStatus
import com.dragon.farm.coursework.data.repository.CaringAndTrainActionRepository
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
            dragonCharacteristicService.getCharacteristics(action.dragonId).forEach {
                if (it.dragonCharacteristic == DragonCharacteristic.TRAINING) {
                    curDragon.trainingLevel = dragonRepository.getTrainingLevel(it.value!!)
                }
                if (it.value!! <= 0) {
                    when (it.dragonCharacteristic) {
                        DragonCharacteristic.HEALTH -> {
                            curDragon.dragonStatus = DragonStatus.DEATH_DUE_TO_POOR_CARE
                            dragonRepository.save(curDragon)
                            return ActionResponse(
                                action.dragonId,
                                DragonStatus.DEATH_DUE_TO_POOR_CARE,
                                dragonCharacteristicService.getCharacteristics(action.dragonId)
                            )
                        }
                        DragonCharacteristic.HAPPINESS -> {
                            curDragon.dragonStatus = DragonStatus.ESCAPED
                            dragonRepository.save(curDragon)
                            return ActionResponse(
                                action.dragonId,
                                DragonStatus.ESCAPED,
                                dragonCharacteristicService.getCharacteristics(action.dragonId)
                            )
                        }
                        else -> {
                        }
                    }
                }
            }
        }

        return ActionResponse(
            action.dragonId,
            curDragon.dragonStatus,
            dragonCharacteristicService.getCharacteristics(action.dragonId)
        )
    }
}