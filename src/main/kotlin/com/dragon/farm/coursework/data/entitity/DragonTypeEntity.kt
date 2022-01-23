package com.dragon.farm.coursework.data.entitity

import com.dragon.farm.coursework.data.enum.DayTime
import com.dragon.farm.coursework.data.enum.Season
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.EnumType
import javax.persistence.Enumerated
import javax.persistence.GeneratedValue
import javax.persistence.Id
import javax.persistence.Table

private const val TABLE_NAME = "dragon_types"

@Entity
@Table(name = TABLE_NAME)
class DragonTypeEntity {

    @Id
    @GeneratedValue(generator = "${TABLE_NAME}_id_seq")
    @get:Column(name = "id")
    var id: Long? = null

    @get:Column(name = "name", nullable = false, unique = true)
    var name: String? = null

    @get:Column(name = "class_id", nullable = false)
    var classId: Long? = null

    @get:Column(name = "way_of_taming", nullable = false)
    var wayOfTaming: String? = null

    @get:Column(name = "trainable", nullable = false)
    var trainable: Boolean? = null

    @get:Column(name = "active_time", nullable = false)
    @Enumerated(value = EnumType.STRING)
    var activeTime: DayTime? = null

    @get:Column(name = "mating_season", nullable = false)
    @Enumerated(value = EnumType.STRING)
    var matingSeason: Season? = null

    @get:Column(name = "hatching_age", nullable = false)
    var hatchingAge: Int? = null

    @get:Column(name = "puberty_age", nullable = false)
    var pubertyAge: Int? = null

    @get:Column(name = "appearance_id", nullable = false, unique = true)
    var appearanceId: Long? = null

    @get:Column(name = "rarity", nullable = false)
    var rarity: Int? = null
}