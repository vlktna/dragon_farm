package com.dragon.farm.coursework.data.entitity

import com.dragon.farm.coursework.data.enum.ActionType
import com.dragon.farm.coursework.data.enum.DragonCharacteristic
import java.io.Serializable
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.EnumType
import javax.persistence.Enumerated
import javax.persistence.Id
import javax.persistence.IdClass
import javax.persistence.Table

private const val TABLE_NAME = "action_type_influence"

@Entity
@Table(name = TABLE_NAME)
@IdClass(ActionTypeInfluenceEntity.ActionTypeInfluenceId::class)
class ActionTypeInfluenceEntity {

    @get:Column(name = "influence_value")
    var influenceValue: Int? = null

    @Id
    @get:Column(name = "char_type")
   @Enumerated(value = EnumType.STRING)
var charType: DragonCharacteristic? = null

    @Id
    @get:Column(name = "action_type")
   @Enumerated(value = EnumType.STRING)
var actionType: ActionType? = null

    class ActionTypeInfluenceId: Serializable {
        var charType: DragonCharacteristic? = null
        var actionType: ActionType? = null
    }
}