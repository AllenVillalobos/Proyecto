package com.progra.proyecto.Course.Dto;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.progra.proyecto.Subject.Dto.subjectDto;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
@Entity
@Table(name = "CoursesDB")
public class courseDto {
    



@Id
@GeneratedValue(strategy = GenerationType.IDENTITY) 
private int course_id;
private String name;
@JsonIgnore
@OneToMany(mappedBy = "course")
private List<subjectDto> subjec;
public int getCourse_id() {
    return course_id;
}
public void setCourse_id(int course_id) {
    this.course_id = course_id;
}
public String getName() {
    return name;
}
public void setName(String name) {
    this.name = name;
}
public List<subjectDto> getSubjec() {
    return subjec;
}
public void setSubjec(List<subjectDto> subjec) {
    this.subjec = subjec;
}



}

