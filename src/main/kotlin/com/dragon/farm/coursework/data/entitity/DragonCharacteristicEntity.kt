package com.dragon.farm.coursework.data.entitity

import com.dragon.farm.coursework.data.enum.DragonCharacteristic
import java.io.Serializable
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.EnumType
import javax.persistence.Enumerated
import javax.persistence.Id
import javax.persistence.IdClass
import javax.persistence.Table

private const val TABLE_NAME = "dragon_characteristics"

@Entity
@Table(name = TABLE_NAME)
@IdClass(DragonCharacteristicEntity.DragonCharacteristicId::class)
class DragonCharacteristicEntity {

    @get:Column(name = "value", nullable = false)
    var value: Int? = null

    @Id
    @get:Column(name = "char_type", nullable = false)
    @Enumerated(value = EnumType.STRING)
    var charType: DragonCharacteristic? = null

    @Id
    @get:Column(name = "dragon_id", nullable = false)
    var dragonId: Long? = null

    class DragonCharacteristicId: Serializable {
        var charType: DragonCharacteristic? = null
        var dragonId: Long? = null
    }
}