package com.dragon.farm.coursework.data.repository

import com.dragon.farm.coursework.data.entitity.TransferDragonResults
import org.springframework.data.jpa.repository.JpaRepository

interface TransferDragonResultsRepository: JpaRepository<TransferDragonResults, Long> {
    fun findByName(name: String): TransferDragonResults
}