package com.dragon.farm.coursework.data.service

import com.dragon.farm.coursework.data.repository.TransferDragonHistoryRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class TransferService @Autowired constructor(private val transferDragonHistoryRepository: TransferDragonHistoryRepository) {

    fun getDragonTransfersByPersonId(personId: Long): List<Long> {
        return transferDragonHistoryRepository.findByPersonIdAndResultIdIsNull(personId).map { it.dragonId!! }
    }
}