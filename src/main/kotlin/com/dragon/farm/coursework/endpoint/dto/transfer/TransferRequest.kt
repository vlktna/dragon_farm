package com.dragon.farm.coursework.endpoint.dto.transfer

import com.dragon.farm.coursework.data.enum.TransferType

data class TransferRequest(val classes: List<String>, val type: TransferType)