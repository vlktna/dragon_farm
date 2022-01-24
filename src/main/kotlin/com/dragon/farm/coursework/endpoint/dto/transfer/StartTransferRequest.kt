package com.dragon.farm.coursework.endpoint.dto.transfer

import com.dragon.farm.coursework.data.enum.TransferType

data class StartTransferRequest(val transferType: TransferType, val dragonId: Long)