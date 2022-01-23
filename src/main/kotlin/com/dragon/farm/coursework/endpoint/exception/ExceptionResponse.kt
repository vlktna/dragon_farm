package com.dragon.farm.coursework.endpoint.exception

import org.springframework.http.HttpStatus

data class ExceptionResponse(val message: String?, val status: HttpStatus)