package com.dragon.farm.coursework.endpoint.exception

import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.security.authentication.BadCredentialsException
import org.springframework.web.bind.annotation.ControllerAdvice
import org.springframework.web.bind.annotation.ExceptionHandler
import org.springframework.web.context.request.WebRequest
import org.springframework.web.server.ResponseStatusException
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler

@ControllerAdvice
class RestResponseEntityExceptionHandler: ResponseEntityExceptionHandler() {

    @ExceptionHandler(value = [ResponseStatusException::class, ResponseStatusException::class])
    protected fun handleResponseStatusException(ex: ResponseStatusException, request: WebRequest): ResponseEntity<ExceptionResponse> {
        return ResponseEntity<ExceptionResponse>(ExceptionResponse(ex.reason, ex.status), ex.status)
    }

    @ExceptionHandler(value = [BadCredentialsException::class, BadCredentialsException::class])
    protected fun handleAuthenticationException(ex: BadCredentialsException, request: WebRequest): ResponseEntity<ExceptionResponse> {
        return ResponseEntity<ExceptionResponse>(ExceptionResponse("Wrong password", HttpStatus.UNAUTHORIZED), HttpStatus.UNAUTHORIZED)
    }

    @ExceptionHandler(value = [java.lang.Exception::class, java.lang.Exception::class])
    protected fun handleAuthenticationException(ex: java.lang.Exception, request: WebRequest): ResponseEntity<ExceptionResponse> {
        return ResponseEntity<ExceptionResponse>(ExceptionResponse(ex.message, HttpStatus.INTERNAL_SERVER_ERROR), HttpStatus.INTERNAL_SERVER_ERROR)
    }
}