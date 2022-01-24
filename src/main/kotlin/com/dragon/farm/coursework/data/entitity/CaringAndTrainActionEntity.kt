package com.dragon.farm.coursework.data.entitity

import com.dragon.farm.coursework.data.enum.ActionType
import java.util.*
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.EnumType
import javax.persistence.Enumerated
import javax.persistence.GeneratedValue
import javax.persistence.Id
import javax.persistence.Table

private const val TABLE_NAME = "caring_and_train_actions"

@Entity
@Table(name = TABLE_NAME)
class CaringAndTrainActionEntity {
    @Id
    @GeneratedValue(generator = "${TABLE_NAME}_id_seq")
    @get:Column(name = "id")
    var id: Long? = null

    @get:Column(name = "action_type", nullable = false)
    @Enumerated(value = EnumType.STRING)
    var actionType: ActionType? = null

    @get:Column(name = "worker_id", nullable = false)
    var workerId: Long? = null

    @get:Column(name = "time_start", nullable = false)
    var timeStart: Date? = null

    @get:Column(name = "dragon_id", nullable = false)
    var dragonId: Long? = null
}