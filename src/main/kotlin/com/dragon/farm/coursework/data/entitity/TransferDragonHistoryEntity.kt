package com.dragon.farm.coursework.data.entitity

import com.dragon.farm.coursework.data.enum.TransferType
import java.io.Serializable
import java.util.*
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.EnumType
import javax.persistence.Enumerated
import javax.persistence.Id
import javax.persistence.IdClass
import javax.persistence.Table

private const val TABLE_NAME = "transfer_dragon_history"

@Entity
@Table(name = TABLE_NAME)
@IdClass(TransferDragonHistoryEntity.TransferDragonHistoryId::class)
class TransferDragonHistoryEntity {

    @get:Column(name = "result_id")
    var resultId: Long? = null

    @get:Column(name = "transfer_type", nullable = false, unique = true)
    @Enumerated(value = EnumType.STRING)
    var transferType: TransferType? = null

    @Id
    @get:Column(name = "dragon_id", nullable = false)
    var dragonId: Long? = null

    @Id
    @get:Column(name = "person_id", nullable = false)
    var personId: Long? = null

    @get:Column(name = "time_start", nullable = false)
    var timeStart: Date? = null

    @get:Column(name = "time_finish")
    var timeFinish: Date? = null

    class TransferDragonHistoryId: Serializable {
        var dragonId: Long? = null
        var personId: Long? = null
    }
}