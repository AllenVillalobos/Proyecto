package com.progra.proyecto.Questions.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.progra.proyecto.Questions.Bl.questionsBl;
import com.progra.proyecto.Questions.Dto.questionsDto;
import com.progra.proyecto.Questions.Repository.questionsRepository;

@RestController
@CrossOrigin
@RequestMapping("/api/question")
public class questionsController {
    @Autowired
    questionsRepository repo;
    @GetMapping
    public List<questionsDto> lista(){
        questionsBl bl =new questionsBl(repo);
        return bl.list();
    }
    @GetMapping(value = "/{id}")
    public List<questionsDto> subject(@PathVariable int id){
        questionsBl bl = new questionsBl(repo);
        return bl.subject(id);
    }
}
