package com.dragon.farm.coursework.endpoint.controller

import com.dragon.farm.coursework.data.entitity.TransferDragonHistoryEntity
import com.dragon.farm.coursework.data.entitity.TransferDragonResults
import com.dragon.farm.coursework.data.enum.DragonStatus
import com.dragon.farm.coursework.data.enum.TrainingLevel
import com.dragon.farm.coursework.data.enum.TransferType
import com.dragon.farm.coursework.data.repository.ClassRepository
import com.dragon.farm.coursework.data.repository.DragonRepository
import com.dragon.farm.coursework.data.repository.DragonTypeRepository
import com.dragon.farm.coursework.data.repository.PeopleRepository
import com.dragon.farm.coursework.data.repository.TransferDragonHistoryRepository
import com.dragon.farm.coursework.data.repository.TransferDragonResultsRepository
import com.dragon.farm.coursework.data.service.DragonCharacteristicService
import com.dragon.farm.coursework.endpoint.dto.dragon.ShortDragonResponse
import com.dragon.farm.coursework.endpoint.dto.transfer.StartTransferRequest
import com.dragon.farm.coursework.endpoint.dto.transfer.TransferRequest
import com.dragon.farm.coursework.security.config.Token
import com.dragon.farm.coursework.security.entity.UserDetailsRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.context.annotation.Lazy
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.CrossOrigin
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestHeader
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.server.ResponseStatusException
import java.util.*

@RestController
@CrossOrigin(origins = ["*"], allowedHeaders = ["*"])
@RequestMapping("/transfer")
class TransferController {

    @Autowired
    private lateinit var dragonRepository: DragonRepository

    @Autowired
    private lateinit var classRepository: ClassRepository

    @Autowired
    private lateinit var dragonTypeRepository: DragonTypeRepository

    @Autowired
    private lateinit var dragonCharacteristicService: DragonCharacteristicService

    @Autowired
    private lateinit var userRepository: UserDetailsRepository

    @Autowired
    private lateinit var peopleRepository: PeopleRepository

    @Autowired
    private lateinit var transferRepository: TransferDragonHistoryRepository

    @Autowired
    private lateinit var transferDragonResultsRepository: TransferDragonResultsRepository

    @Lazy
    @Autowired
    lateinit var token: Token

    @PostMapping("/all")
    fun getAllDragons(@RequestBody request: TransferRequest): List<ShortDragonResponse> {
        val types = dragonTypeRepository.findByClassIdIn(classRepository.findByNameIn(request.classes).map { it.id!! })
            .map { it.id }.toSet()
        return if (request.type == TransferType.PERMANENT) {
            dragonRepository.findAllByTrainingLevel(TrainingLevel.ADVANCED)
        } else {
            dragonRepository.findAllByTrainingLevelOrTrainingLevel(TrainingLevel.ADVANCED, TrainingLevel.INTERMEDIATE)
        }.filter { types.contains(it.typeId) }.filter { it.dragonStatus == DragonStatus.ALIVE }
            .map { ShortDragonResponse(it.id, it.name, dragonCharacteristicService.getCharacteristics(it.id!!)) }
    }

    @PostMapping
    fun startTransfer(
        @RequestHeader("Authorization") jwt: String,
        @RequestBody request: StartTransferRequest
    ): ResponseEntity<String> {
        val person = peopleRepository.findById(userRepository.findById(token.getId(jwt)).get().personId!!).get()
        if ((request.transferType == TransferType.PERMANENT && person.reputation!! < 60) || (request.transferType == TransferType.TEMPORAL && person.reputation!! < 0)) {
            throw ResponseStatusException(
                HttpStatus.CONFLICT,
                "Not enough reputation points"
            )
        }
        transferRepository.save(TransferDragonHistoryEntity().apply {
            transferType = request.transferType
            dragonId = request.dragonId
            personId = person.id
            timeStart = Date()
        })
        return ResponseEntity<String>("Success", HttpStatus.OK)
    }

    @GetMapping("/{dragonId}")
    fun finishTransfer(
        @RequestHeader("Authorization") jwt: String,
        @PathVariable dragonId: Long
    ): ResponseEntity<String> {
        val person = peopleRepository.findById(userRepository.findById(token.getId(jwt)).get().personId!!).get()
        val transfer = transferRepository.findById(
            TransferDragonHistoryEntity.TransferDragonHistoryId().apply {
                this.dragonId = dragonId
                this.personId = person.id
            }).get()

        val result: TransferDragonResults
        when (dragonRepository.getById(dragonId).dragonStatus) {
            DragonStatus.ALIVE -> {
                result = transferDragonResultsRepository.findByName("dragon`s characteristics got better")
            }
            DragonStatus.ESCAPED -> {
                result = transferDragonResultsRepository.findByName("dragon escaped")
            }
            DragonStatus.DEATH_DUE_TO_POOR_CARE -> {
                result = transferDragonResultsRepository.findByName("dragon is dead because of poor care")
            }
            DragonStatus.DEATH_FROM_OLD_AGE -> {
                result = transferDragonResultsRepository.findByName("dragon is dead because of old age")

            }
            else -> {
                result = transferDragonResultsRepository.findByName("dragon`s characteristics have not changed")
            }
        }

        person.reputation = person.reputation!! + result.reputationPoints!!
        peopleRepository.save(person)
        transfer.timeFinish = Date()
        transfer.resultId = result.id
        transferRepository.save(transfer)
        return ResponseEntity<String>(result.name, HttpStatus.OK)
    }
}