package com.dragon.farm.coursework.data.entitity

import com.dragon.farm.coursework.data.enum.Size
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.EnumType
import javax.persistence.Enumerated
import javax.persistence.GeneratedValue
import javax.persistence.Id
import javax.persistence.Table

private const val TABLE_NAME = "dragon_appearance"

@Entity
@Table(name = TABLE_NAME)
class DragonAppearanceEntity {

    @Id
    @GeneratedValue(generator = "${TABLE_NAME}_id_seq")
    @get:Column(name = "id")
    var id: Long? = null

    @get:Column(name = "size", nullable = false)
    @Enumerated(value = EnumType.STRING)
    var size: Size? = null

    @get:Column(name = "color", nullable = false)
    var color: String? = null

    @get:Column(name = "fire_type", nullable = false)
    var fireType: String? = null

    @get:Column(name = "features", nullable = false)
    var features: String? = null
}