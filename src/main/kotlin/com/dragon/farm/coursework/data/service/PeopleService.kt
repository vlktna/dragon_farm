package com.dragon.farm.coursework.data.service

import com.dragon.farm.coursework.data.entitity.PeopleEntity
import com.dragon.farm.coursework.data.repository.DragonRepository
import com.dragon.farm.coursework.data.repository.PeopleRepository
import com.dragon.farm.coursework.endpoint.dto.dragon.ShortDragonResponse
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.context.annotation.Lazy
import org.springframework.http.HttpStatus
import org.springframework.stereotype.Service
import org.springframework.web.server.ResponseStatusException
import javax.transaction.Transactional

@Service
class PeopleService @Autowired constructor(
    private val peopleRepository: PeopleRepository,
    private val dragonRepository: DragonRepository
) {

    @Lazy
    @Autowired
    private lateinit var transferService: TransferService

    @Lazy
    @Autowired
    private lateinit var dragonCharacteristicService: DragonCharacteristicService

    fun getPersonById(id: Long): PeopleEntity {
        return peopleRepository.findById(id).orElseThrow {
            ResponseStatusException(HttpStatus.NOT_FOUND, "Person with id = $id not found")
        }
    }

    fun getDragons(personId: Long): List<ShortDragonResponse> {
        return transferService.getDragonTransfersByPersonId(personId).map {
            ShortDragonResponse(
                it,
                dragonRepository.getById(it).name,
                dragonCharacteristicService.getCharacteristics(it)
            )
        }
    }

    @Transactional
    fun save(person: PeopleEntity): PeopleEntity {
        return peopleRepository.save(person)
    }
}