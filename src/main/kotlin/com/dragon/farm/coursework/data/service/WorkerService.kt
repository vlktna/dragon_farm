package com.dragon.farm.coursework.data.service

import com.dragon.farm.coursework.data.enum.WorkerType
import com.dragon.farm.coursework.data.repository.DragonRepository
import com.dragon.farm.coursework.data.repository.WorkerRepository
import com.dragon.farm.coursework.endpoint.dto.dragon.ShortDragonResponse
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.context.annotation.Lazy
import org.springframework.http.HttpStatus
import org.springframework.stereotype.Service
import org.springframework.web.server.ResponseStatusException

@Service
class WorkerService @Autowired constructor(
    private val workerRepository: WorkerRepository,
    private val dragonRepository: DragonRepository
) {

    @Lazy
    @Autowired
    private lateinit var dragonCharacteristicService: DragonCharacteristicService

    fun getDragons(personId: Long): List<ShortDragonResponse> {
        val worker = workerRepository.findByPersonId(personId) ?: throw ResponseStatusException(
            HttpStatus.NOT_FOUND,
            "Worker with person id = $personId not found"
        )
        return workerRepository.getDragons(worker.id!!).map { id ->
            ShortDragonResponse(
                id,
                dragonRepository.getById(id).name,
                dragonCharacteristicService.getCharacteristics(id)
            )
        }
    }

    fun getWorkerTypeByPersonId(personId: Long): WorkerType? {
        val worker = workerRepository.findByPersonId(personId) ?: return null
        return worker.workerType
    }
}