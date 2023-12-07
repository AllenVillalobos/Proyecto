package com.progra.proyecto.Subject.Bl;
import java.util.List;

import com.progra.proyecto.Course.Dto.courseDto;
import com.progra.proyecto.Subject.Dto.subjectDto;
import com.progra.proyecto.Subject.Repository.subjectRepository;



public class subjectBl {
      private subjectRepository Repo;
   

    public subjectBl(subjectRepository Repo) {
        this.Repo = Repo;
    }

    public subjectDto add(subjectDto subject) {
        return Repo.save(subject);
    }

    public List<subjectDto> list() {
        return Repo.findAll();
    }

    public void delete(Long subject_id) {
        Repo.deleteById(subject_id);
    }

    public subjectDto get(Long subject_id) {
        return Repo.findById(subject_id).orElse(null);
    }
    public List<subjectDto> lista(){
        return Repo.findAll();
    }
    public List<subjectDto> course(courseDto course){
        return Repo.findBycourse(course);
    }
}
