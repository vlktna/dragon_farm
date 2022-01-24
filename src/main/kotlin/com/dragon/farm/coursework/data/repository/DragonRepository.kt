package com.dragon.farm.coursework.data.repository

import com.dragon.farm.coursework.data.entitity.DragonEntity
import com.dragon.farm.coursework.data.enum.TrainingLevel
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query

interface DragonRepository : JpaRepository<DragonEntity, Long> {

    @Query(
        "SELECT training_level FROM characteristic_levels WHERE min_value <= ?1 AND max_value >= ?1",
        nativeQuery = true
    )
    fun getTrainingLevel(newValue: Int): TrainingLevel
}