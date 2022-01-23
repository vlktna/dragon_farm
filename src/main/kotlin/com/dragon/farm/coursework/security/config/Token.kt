package com.dragon.farm.coursework.security.config

import io.jsonwebtoken.Claims
import io.jsonwebtoken.Jwts
import org.springframework.beans.factory.annotation.Value
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.stereotype.Service
import java.nio.charset.StandardCharsets
import java.util.function.Function

@Service
class Token {

    @Value("com.security.key")
    private lateinit var key: String

    fun extractUsername(token: String): String {
        return extractClaim(token, Claims::getSubject)
    }

    fun <T> extractClaim(token: String, claimsResolver: Function<Claims, T>): T {
        val claims = extractAllClaims(token) ?: throw Exception("Claims not found")
        return claimsResolver.apply(claims)
    }

    private fun extractAllClaims(token: String): Claims? {
        return Jwts.parser().setSigningKey(key.toByteArray(StandardCharsets.UTF_8)).parseClaimsJws(token).body
    }

    fun getId(token: String): Int {
        return extractAllClaims(token)!!.get("userId", Int::class.java)
    }

    fun generateToken(userDetails: UserDetails, id: Long): String {
        return createToken(userDetails.username, id)
    }

    private fun createToken(subject: String, id: Long): String {
        return Jwts.builder()
            .setSubject(subject)
            .claim("userId", id)
            .signWith(io.jsonwebtoken.SignatureAlgorithm.HS256, key.toByteArray(StandardCharsets.UTF_8))
            .compact()
    }

    fun validateToken(token: String, userDetails: UserDetails): Boolean {
        val username = extractUsername(token)
        return username == userDetails.username
    }
}