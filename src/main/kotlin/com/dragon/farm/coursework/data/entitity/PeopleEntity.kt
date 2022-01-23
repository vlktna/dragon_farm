package com.dragon.farm.coursework.data.entitity

import com.dragon.farm.coursework.data.enum.Gender
import org.springframework.format.annotation.DateTimeFormat
import java.util.Date
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.EnumType
import javax.persistence.Enumerated
import javax.persistence.GeneratedValue
import javax.persistence.Id
import javax.persistence.Table

private const val TABLE_NAME = "people"

@Entity
@Table(name = TABLE_NAME)
class PeopleEntity {

    @Id
    @GeneratedValue(generator = "${TABLE_NAME}_id_seq")
    @get:Column(name = "id")
    var id: Long? = null

    @get:Column(name = "name", nullable = false)
    var name: String? = null

    @get:Column(name = "surname", nullable = false)
    var surname: String? = null

    @get:Column(name = "gender", nullable = false)
    @Enumerated(value = EnumType.STRING)
    var gender: Gender? = null

    @get:Column(name = "reputation", nullable = false)
    var reputation: Int? = null

    @DateTimeFormat(style = "yyyy-MM-dd")
    @get:Column(name = "date_of_death", nullable = false)
    var dateOfDeath: Date? = null

    @DateTimeFormat(style = "yyyy-MM-dd")
    @get:Column(name = "date_of_birth", nullable = false)
    var dateOfBirth: Date? = null
}