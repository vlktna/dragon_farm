package com.dragon.farm.coursework.data.repository

import com.dragon.farm.coursework.data.entitity.DragonCharacteristicEntity
import org.springframework.data.jpa.repository.JpaRepository

interface DragonCharacteristicRepository: JpaRepository<DragonCharacteristicEntity, DragonCharacteristicEntity.DragonCharacteristicId> {
    fun findByDragonId(dragonId: Long): List<DragonCharacteristicEntity>
}