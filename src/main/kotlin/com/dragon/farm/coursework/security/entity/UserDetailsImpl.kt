package com.dragon.farm.coursework.security.entity


import org.springframework.security.core.GrantedAuthority
import org.springframework.security.core.authority.SimpleGrantedAuthority
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UsernameNotFoundException

class UserDetailsImpl(private val user: UserDetailsEntity?) : UserDetails {

    override fun getAuthorities(): Collection<GrantedAuthority?> {
        return listOf(SimpleGrantedAuthority("USER"))
    }

    override fun getPassword(): String {
        return user?.password ?: throw UsernameNotFoundException("Password is null")
    }

    override fun getUsername(): String {
        return user?.userName ?: throw UsernameNotFoundException("User name is null")
    }

    override fun isAccountNonExpired(): Boolean {
        return true
    }

    override fun isAccountNonLocked(): Boolean {
        return true
    }

    override fun isCredentialsNonExpired(): Boolean {
        return true
    }

    override fun isEnabled(): Boolean {
        return true
    }
}