package com.dragon.farm.coursework.endpoint.controller

import com.dragon.farm.coursework.data.service.DragonService
import com.dragon.farm.coursework.endpoint.dto.dragon.DragonResponse
import com.dragon.farm.coursework.endpoint.dto.dragon.ShortDragonResponse
import com.dragon.farm.coursework.security.config.Token
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.context.annotation.Lazy
import org.springframework.http.HttpStatus
import org.springframework.web.bind.annotation.CrossOrigin
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestHeader
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.server.ResponseStatusException

@RestController
@CrossOrigin(origins = ["*"], allowedHeaders = ["*"])
@RequestMapping("/dragon")
class DragonController {

    @Autowired
    lateinit var dragonService: DragonService

    @Lazy
    @Autowired
    lateinit var token: Token;

    @GetMapping("/{id}")
    fun getDragon(@PathVariable id: Long): DragonResponse {
        return dragonService.getDragonById(id) ?: throw ResponseStatusException(
            HttpStatus.NOT_FOUND,
            "Dragon with id = $id not found"
        )
    }

    @GetMapping("/all")
    fun getAllDragons(@RequestHeader("Authorization") jwt: String): List<ShortDragonResponse> {
        return dragonService.getDragonsByUserId(token.getId(jwt))
    }
}