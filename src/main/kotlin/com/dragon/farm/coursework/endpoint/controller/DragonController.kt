package com.dragon.farm.coursework.endpoint.controller

import com.dragon.farm.coursework.data.repository.DragonTypeRepository
import com.dragon.farm.coursework.data.service.ActionService
import com.dragon.farm.coursework.data.service.DragonService
import com.dragon.farm.coursework.endpoint.dto.dragon.ActionRequest
import com.dragon.farm.coursework.endpoint.dto.dragon.ActionResponse
import com.dragon.farm.coursework.endpoint.dto.dragon.DragonResponse
import com.dragon.farm.coursework.endpoint.dto.dragon.ShortDragonResponse
import com.dragon.farm.coursework.security.config.Token
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.context.annotation.Lazy
import org.springframework.http.HttpStatus
import org.springframework.web.bind.annotation.CrossOrigin
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestHeader
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import org.springframework.web.server.ResponseStatusException
import javax.transaction.Transactional

@RestController
@CrossOrigin(origins = ["*"], allowedHeaders = ["*"])
@RequestMapping("/dragon")
class DragonController {

    @Autowired
    lateinit var dragonService: DragonService

    @Autowired
    lateinit var actionService: ActionService

    @Autowired
    lateinit var dragonTypeRepository: DragonTypeRepository

    @Lazy
    @Autowired
    lateinit var token: Token

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

    @GetMapping("/abilities")
    fun getAllDragons(): List<String> {
        return dragonTypeRepository.getAllAbilities()
    }

    @Transactional
    @PostMapping("/action")
    fun newAction(
        @RequestHeader("Authorization") jwt: String,
        @RequestBody action: ActionRequest
    ): ActionResponse {
        return actionService.newAction(action, token.getId(jwt))
    }
}