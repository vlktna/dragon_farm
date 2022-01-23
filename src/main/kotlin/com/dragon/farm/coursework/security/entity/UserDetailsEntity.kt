package com.dragon.farm.coursework.security.entity

import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.EnumType
import javax.persistence.Enumerated
import javax.persistence.GeneratedValue
import javax.persistence.Id
import javax.persistence.Table

private const val TABLE_NAME = "user_details"

@Entity
@Table(name = TABLE_NAME)
class UserDetailsEntity {

    @Id
    @GeneratedValue(generator = "${TABLE_NAME}_id_seq")
    @get:Column(name = "id")
    var id: Long? = null

    @get:Column(name = "user_name", nullable = false)
    var userName: String? = null

    @get:Column(name = "password", nullable = false)
    var password: String? = null

    @get:Column(name = "role", nullable = false)
    @Enumerated(value = EnumType.STRING)
    var role: UserRole? = null

    @get:Column(name = "person_id", nullable = false)
    var personId: Long? = null
}