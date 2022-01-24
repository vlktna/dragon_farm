package com.dragon.farm.coursework.data.entitity

import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.Id
import javax.persistence.Table

private const val TABLE_NAME = "transfer_dragon_results"

@Entity
@Table(name = TABLE_NAME)
class TransferDragonResults {

    @Id
    @GeneratedValue(generator = "${TABLE_NAME}_id_seq")
    @get:Column(name = "id")
    var id: Long? = null

    @get:Column(name = "name")
    var name: String? = null

    @get:Column(name = "reputation_points")
    var reputationPoints: Int? = null
}