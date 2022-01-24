package com.dragon.farm.coursework.data.repository

import com.dragon.farm.coursework.data.entitity.ClassEntity
import org.springframework.data.jpa.repository.JpaRepository

interface ClassRepository: JpaRepository<ClassEntity, Long> {

    fun findByNameIn(names: List<String>): List<ClassEntity>
}