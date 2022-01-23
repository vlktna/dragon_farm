package com.dragon.farm.coursework.data.service

import com.dragon.farm.coursework.data.repository.WorkerRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class WorkerService @Autowired constructor(private val workerRepository: WorkerRepository) {

    fun existsById(id: Long): Boolean {
        return workerRepository.existsById(id)
    }
}