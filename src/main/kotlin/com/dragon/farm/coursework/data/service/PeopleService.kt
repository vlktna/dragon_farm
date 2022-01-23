package com.dragon.farm.coursework.data.service

import com.dragon.farm.coursework.data.entitity.PeopleEntity
import com.dragon.farm.coursework.data.repository.PeopleRepository
import com.dragon.farm.coursework.security.entity.UserRole
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.context.annotation.Lazy
import org.springframework.http.HttpStatus
import org.springframework.stereotype.Service
import org.springframework.web.server.ResponseStatusException
import javax.transaction.Transactional

@Service
class PeopleService @Autowired constructor(private val peopleRepository: PeopleRepository) {

    @Lazy
    @Autowired
    private lateinit var workerService: WorkerService

    fun getPersonById(id: Long): PeopleEntity {
        return peopleRepository.findById(id).orElseThrow {
            ResponseStatusException(HttpStatus.NOT_FOUND, "Person with id = $id not found")
        }
    }

    fun getUserRole(id: Long): UserRole {
        return if (workerService.existsById(id)) {
            UserRole.WORKER
        } else {
            UserRole.USER
        }
    }

    @Transactional
    fun save(person: PeopleEntity): PeopleEntity {
        return peopleRepository.save(person)
    }
}