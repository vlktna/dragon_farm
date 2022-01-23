package com.dragon.farm.coursework.endpoint.exception

import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.ControllerAdvice
import org.springframework.web.bind.annotation.ExceptionHandler
import org.springframework.web.context.request.WebRequest
import org.springframework.web.server.ResponseStatusException
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler
import javax.security.sasl.AuthenticationException

@ControllerAdvice
class RestResponseEntityExceptionHandler: ResponseEntityExceptionHandler() {

    @ExceptionHandler(value = [ResponseStatusException::class, ResponseStatusException::class])
    protected fun handleResponseStatusException(ex: ResponseStatusException, request: WebRequest): ResponseEntity<ExceptionResponse> {
        return ResponseEntity<ExceptionResponse>(ExceptionResponse(ex.reason, ex.status), ex.status)
    }

    @ExceptionHandler(value = [AuthenticationException::class, AuthenticationException::class])
    protected fun handleAuthenticationException(ex: AuthenticationException, request: WebRequest): ResponseEntity<ExceptionResponse> {
        return ResponseEntity<ExceptionResponse>(ExceptionResponse(ex.message, HttpStatus.UNAUTHORIZED), HttpStatus.UNAUTHORIZED)
    }
}