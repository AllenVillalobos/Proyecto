package com.progra.proyecto.Questions.Bl;

import java.util.List;

import com.progra.proyecto.Questions.Dto.questionsDto;
import com.progra.proyecto.Questions.Repository.questionsRepository;

public class questionsBl {
    questionsRepository repo;

       public questionsBl(questionsRepository repo){
        this.repo=repo;
    }
    public List<questionsDto> list(){
        return repo.findAll();
    }
    public List<questionsDto> subject(int subjectid){
        return repo.findBysubjectid(subjectid);

    }
}
