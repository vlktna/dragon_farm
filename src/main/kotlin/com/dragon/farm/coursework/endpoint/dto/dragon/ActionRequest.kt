package com.dragon.farm.coursework.endpoint.dto.dragon

import com.dragon.farm.coursework.data.enum.ActionType

data class ActionRequest(val actionType: ActionType, val dragonId: Long)