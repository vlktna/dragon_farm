package com.dragon.farm.coursework.data.service

import com.dragon.farm.coursework.data.repository.ClassRepository
import com.dragon.farm.coursework.data.repository.DragonAppearanceRepository
import com.dragon.farm.coursework.data.repository.DragonRepository
import com.dragon.farm.coursework.data.repository.DragonTypeRepository
import com.dragon.farm.coursework.endpoint.dto.dragon.DragonAppearanceResponse
import com.dragon.farm.coursework.endpoint.dto.dragon.DragonResponse
import com.dragon.farm.coursework.endpoint.dto.dragon.ShortDragonResponse
import com.dragon.farm.coursework.security.entity.UserDetailsRepository
import com.dragon.farm.coursework.security.entity.UserRole
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.context.annotation.Lazy
import org.springframework.stereotype.Service
import java.time.LocalDate
import java.time.Period
import java.util.*
import kotlin.time.Duration.Companion.days

@Service
class DragonService @Autowired constructor(
    private val dragonRepository: DragonRepository,
    private val dragonTypeRepository: DragonTypeRepository,
    private val dragonAppearanceRepository: DragonAppearanceRepository,
    private val userRepository: UserDetailsRepository,
    private val classRepository: ClassRepository
) {

    @Lazy
    @Autowired
    private lateinit var peopleService: PeopleService

    @Lazy
    @Autowired
    private lateinit var workerService: WorkerService

    @Lazy
    @Autowired
    private lateinit var dragonCharacteristicService: DragonCharacteristicService

    fun getDragonById(id: Long): DragonResponse? {
        val dragonEntity = dragonRepository.findById(id)
        val dragonType = dragonTypeRepository.getById(dragonEntity.get().typeId!!)
        if (dragonEntity.isPresent) {
            return DragonResponse(
                dragonEntity.get().id,
                dragonEntity.get().name,
                dragonEntity.get().trainingLevel,
                dragonType.name,
                classRepository.getById(dragonType.classId!!).name,
                getAge(dragonEntity.get().dateOfBirth,  dragonEntity.get().dateOfDeath),
                dragonEntity.get().gender,
                dragonEntity.get().cageId,
                dragonEntity.get().dragonStatus,
                dragonCharacteristicService.getCharacteristics(id),
                getAbilities(dragonEntity.get().typeId!!),
                getAppearance(dragonEntity.get().typeId!!)
            )
        }
        return null
    }

    fun getDragonsByUserId(id: Long): List<ShortDragonResponse> {
        val user = userRepository.findById(id).get()
        return when (user.role) {
            UserRole.USER -> peopleService.getDragons(user.personId!!)
            UserRole.WORKER -> workerService.getDragons(user.personId!!)
            else -> listOf()
        }
    }

    private fun getAppearance(typeId: Long): DragonAppearanceResponse {
        val appearanceEntity =
            dragonAppearanceRepository.findById(dragonTypeRepository.getById(typeId).appearanceId!!).get()
        return DragonAppearanceResponse(
            appearanceEntity.size,
            appearanceEntity.color,
            appearanceEntity.fireType,
            appearanceEntity.features
        )
    }

    private fun getAbilities(typeId: Long): List<String> {
        return dragonTypeRepository.getAbilitiesByClassId(dragonTypeRepository.getById(typeId).classId!!)
    }

    private fun getAge(dateOfBirth: Date?, dateOfDeath: Date?): Int {
        return if (dateOfDeath == null) {
            Date().year - dateOfBirth!!.year
        } else {
            dateOfDeath.year - dateOfBirth!!.year
        }
    }
}