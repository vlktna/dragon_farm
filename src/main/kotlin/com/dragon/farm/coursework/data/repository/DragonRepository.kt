package com.dragon.farm.coursework.data.repository

import com.dragon.farm.coursework.data.entitity.DragonEntity
import org.springframework.data.jpa.repository.JpaRepository

interface DragonRepository: JpaRepository<DragonEntity, Long>