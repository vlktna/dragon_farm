package com.dragon.farm.coursework.data.repository

import com.dragon.farm.coursework.data.entitity.TransferDragonHistoryEntity
import org.springframework.data.jpa.repository.JpaRepository

interface TransferDragonHistoryRepository :
    JpaRepository<TransferDragonHistoryEntity, TransferDragonHistoryEntity.TransferDragonHistoryId> {

        fun findByPersonIdAndResultIdIsNull(personId: Long): List<TransferDragonHistoryEntity>
}