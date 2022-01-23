package com.dragon.farm.coursework.data.entitity

import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.Id
import javax.persistence.Table

private const val TABLE_NAME = "classes"

@Entity
@Table(name = TABLE_NAME)
class ClassEntity {

    @Id
    @GeneratedValue(generator = "${TABLE_NAME}_id_seq")
    @get:Column(name = "id")
    var id: Long? = null

    @get:Column(name = "name", nullable = false, unique = true)
    var name: String? = null

    @get:Column(name = "description")
    var description: String? = null
}