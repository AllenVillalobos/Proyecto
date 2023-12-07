package com.progra.proyecto.Course.Repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.progra.proyecto.Course.Dto.courseDto;



public interface courseRepository extends JpaRepository<courseDto,Long> {
    Optional<courseDto> findByname(String name);
}
