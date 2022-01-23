package com.dragon.farm.coursework.data.repository

import com.dragon.farm.coursework.data.entitity.PeopleEntity
import org.springframework.data.jpa.repository.JpaRepository

interface PeopleRepository: JpaRepository<PeopleEntity, Long>