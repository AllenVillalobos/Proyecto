package com.progra.proyecto.user.da;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import com.progra.proyecto.user.dto.UserDto;

public interface UserRepository extends JpaRepository<UserDto, Long> 
{
    Optional<UserDto> findByEmail(String email);
    Optional<UserDto> findByEmailAndPassword(String email, String password);
}

