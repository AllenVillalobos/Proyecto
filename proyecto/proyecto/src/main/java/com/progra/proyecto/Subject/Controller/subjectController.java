package com.progra.proyecto.Subject.Controller;

import java.util.List;
import org.springframework.http.ResponseEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.progra.proyecto.Course.Dto.courseDto;
import com.progra.proyecto.Subject.Bl.subjectBl;
import com.progra.proyecto.Subject.Dto.subjectDto;
import com.progra.proyecto.Subject.Repository.subjectRepository;


@RestController
@CrossOrigin
@RequestMapping("api/subject")
public class subjectController {
    @Autowired
    private subjectRepository Repo;
 


    @GetMapping
    public List<subjectDto> subjectList() {
        subjectBl bl = new subjectBl(Repo);
        return bl.list();
    }

    @PostMapping("/add")
    public subjectDto add(@RequestBody subjectDto subject) {
        subjectBl bl = new subjectBl(Repo);
        return bl.add(subject);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> eliminarUsuario(@PathVariable Long id) {
        subjectBl bl = new subjectBl(Repo);
        bl.delete(id);
        return ResponseEntity.ok("Curso eliminado con éxito");
    }
    @PostMapping(value = "/course/dto")
    public List<subjectDto> courseList(@RequestBody courseDto course) {
        subjectBl bl = new subjectBl(Repo);
        return bl.course(course);
    }
}