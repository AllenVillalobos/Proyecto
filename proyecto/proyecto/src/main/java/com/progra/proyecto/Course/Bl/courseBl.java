package com.progra.proyecto.Course.Bl;

import java.util.List;

import com.progra.proyecto.Course.Dto.courseDto;
import com.progra.proyecto.Course.Repository.courseRepository;



public class courseBl {
     private courseRepository Repo; 

    
    public courseBl(courseRepository Repo){
        this.Repo=Repo;
    }

    public courseDto add(courseDto course) {
        return Repo.save(course);
    }
    public courseDto get(String name) {
        return Repo.findByname(name).orElse(null);
    }
    public courseDto get(Long id) {
    return Repo.findById(id).orElse(null);
    }
    public List<courseDto> get(){
        return Repo.findAll();
    }
    
}
