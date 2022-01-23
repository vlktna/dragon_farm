package com.dragon.farm.coursework.data.repository

import com.dragon.farm.coursework.data.entitity.WorkerEntity
import org.springframework.data.jpa.repository.JpaRepository

interface WorkerRepository: JpaRepository<WorkerEntity, Long>