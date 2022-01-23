package com.dragon.farm.coursework.data.entitity

import com.dragon.farm.coursework.data.enum.DayTime
import com.dragon.farm.coursework.data.enum.WorkerType
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.EnumType
import javax.persistence.Enumerated
import javax.persistence.GeneratedValue
import javax.persistence.Id
import javax.persistence.Table

private const val TABLE_NAME = "workers"

@Entity
@Table(name = TABLE_NAME)
class WorkerEntity {

    @Id
    @GeneratedValue(generator = "${TABLE_NAME}_id_seq")
    @get:Column(name = "id")
    var id: Long? = null

    @get:Column(name = "person_id", nullable = false, unique = true)
    var personId: Long? = null

    @get:Column(name = "worker_type", nullable = false)
    @Enumerated(value = EnumType.STRING)
    var workerType: WorkerType? = null

    @get:Column(name = "penalty", nullable = false)
    var penalty: WorkerType? = null

    @get:Column(name = "status", nullable = false)
    var status: Boolean? = null

    @get:Column(name = "work_time", nullable = false)
    @Enumerated(value = EnumType.STRING)
    var workTime: DayTime? = null
}