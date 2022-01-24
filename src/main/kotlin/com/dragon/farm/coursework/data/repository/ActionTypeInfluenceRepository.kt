package com.dragon.farm.coursework.data.repository

import com.dragon.farm.coursework.data.entitity.ActionTypeInfluenceEntity
import org.springframework.data.jpa.repository.JpaRepository

interface ActionTypeInfluenceRepository :
    JpaRepository<ActionTypeInfluenceEntity, ActionTypeInfluenceEntity.ActionTypeInfluenceId>