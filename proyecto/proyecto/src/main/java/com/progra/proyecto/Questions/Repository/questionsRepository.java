package com.progra.proyecto.Questions.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.progra.proyecto.Questions.Dto.questionsDto;

public interface questionsRepository extends JpaRepository<questionsDto,Long> {
    List<questionsDto>findBysubjectid(int subjectid);
}
