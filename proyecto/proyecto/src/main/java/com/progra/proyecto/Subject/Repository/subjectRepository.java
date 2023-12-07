package com.progra.proyecto.Subject.Repository;



import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

import com.progra.proyecto.Course.Dto.courseDto;
import com.progra.proyecto.Subject.Dto.subjectDto;




public interface subjectRepository extends JpaRepository<subjectDto,Long>{
  List<subjectDto>findBycourse(courseDto course);
}
