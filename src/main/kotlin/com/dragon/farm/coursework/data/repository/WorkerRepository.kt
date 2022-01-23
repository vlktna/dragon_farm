package com.dragon.farm.coursework.data.repository

import com.dragon.farm.coursework.data.entitity.WorkerEntity
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query

interface WorkerRepository: JpaRepository<WorkerEntity, Long> {
    fun findByPersonId(personId: Long): WorkerEntity?

    @Query(value = "select dragon_id from dragon_carers_trainers where worker_id = ?1 and status = 'true'", nativeQuery = true)
    fun getDragons(workerId: Long): List<Long>
}