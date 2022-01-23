package com.dragon.farm.coursework.data.entitity

import com.dragon.farm.coursework.data.enum.DragonStatus
import com.dragon.farm.coursework.data.enum.Gender
import com.dragon.farm.coursework.data.enum.TrainingLevel
import org.springframework.format.annotation.DateTimeFormat
import java.util.Date
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.EnumType
import javax.persistence.Enumerated
import javax.persistence.GeneratedValue
import javax.persistence.Id
import javax.persistence.Table

private const val TABLE_NAME = "dragons"

@Entity
@Table(name = TABLE_NAME)
class DragonEntity {

    @Id
    @GeneratedValue(generator = "${TABLE_NAME}_id_seq")
    @get:Column(name = "id")
    var id: Long? = null

    @get:Column(name = "name", nullable = false, unique = true)
    var name: String? = null

    @get:Column(name = "training_level", nullable = false)
    @Enumerated(value = EnumType.STRING)
    var trainingLevel: TrainingLevel? = null

    @get:Column(name = "type_id", nullable = false)
    var typeId: Long? = null

    @get:Column(name = "gender")
    @Enumerated(value = EnumType.STRING)
    var gender: Gender? = null

    @get:Column(name = "cage_id")
    var cageId: Long? = null

    @get:Column(name = "dragon_status", nullable = false)
    @Enumerated(value = EnumType.STRING)
    var dragonStatus: DragonStatus? = null

    @DateTimeFormat(style = "yyyy-MM-dd")
    @get:Column(name = "date_of_death", nullable = false)
    var dateOfDeath: Date? = null

    @DateTimeFormat(style = "yyyy-MM-dd")
    @get:Column(name = "date_of_birth", nullable = false)
    var dateOfBirth: Date? = null
}