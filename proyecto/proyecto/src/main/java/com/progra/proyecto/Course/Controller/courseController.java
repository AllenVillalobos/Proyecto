package com.progra.proyecto.Course.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.progra.proyecto.Course.Bl.courseBl;
import com.progra.proyecto.Course.Dto.courseDto;
import com.progra.proyecto.Course.Repository.courseRepository;


@RestController
@CrossOrigin
@RequestMapping("api/course")
public class courseController {
    @Autowired
    private courseRepository Repo;
    @GetMapping
    public List<courseDto> courseList() {
        courseBl bl = new courseBl(Repo);
        return bl.get();
    }

    @GetMapping("/{name}")
    public courseDto subjectname(@PathVariable String name) {
        courseBl bl = new courseBl(Repo);
        return bl.get(name);
    }
    @PostMapping("/add")
    public courseDto add(@RequestBody courseDto course){
        courseBl bl= new courseBl(Repo);
        return bl.add(course);
    }
    @GetMapping(value = "/buscar/{id}")
    public courseDto buscar(@PathVariable Long id){
        courseBl bl =new courseBl(Repo);
        return bl.get(id);
    }
}
