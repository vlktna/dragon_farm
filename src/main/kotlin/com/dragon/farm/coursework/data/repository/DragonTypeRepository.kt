package com.dragon.farm.coursework.data.repository

import com.dragon.farm.coursework.data.entitity.DragonTypeEntity
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query

interface DragonTypeRepository : JpaRepository<DragonTypeEntity, Long> {
    @Query(
        value = "select a.name from dragon_abilities a join classes_to_abilities cta on a.id = cta.dragon_ability_id where class_id = ?1",
        nativeQuery = true
    )
    fun getAbilitiesByClassId(classId: Long): List<String>

    @Query(
        value = "select a.name from dragon_abilities a",
        nativeQuery = true
    )
    fun getAllAbilities(): List<String>

    fun findByClassIdIn(classId: List<Long>): List<DragonTypeEntity>
}