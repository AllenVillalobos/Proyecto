package com.progra.proyecto.Subject.Dto;

import com.progra.proyecto.Course.Dto.courseDto;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
@Entity
@Table(name = "SubjectDB")
public class subjectDto {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private int subject_Id;
    private String name;
    @ManyToOne
    @JoinColumn(name = "id_course")
    private courseDto course;
    private String author;
    private String creation_Date;
    private double points;
    public int getSubject_Id() {
        return subject_Id;
    }
    public void setSubject_Id(int subject_Id) {
        this.subject_Id = subject_Id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public courseDto getCourse() {
        return course;
    }
    public void setCourse(courseDto course) {
        this.course = course;
    }
    public String getAuthor() {
        return author;
    }
    public void setAuthor(String author) {
        this.author = author;
    }
    public String getCreation_Date() {
        return creation_Date;
    }
    public void setCreation_Date(String creation_Date) {
        this.creation_Date = creation_Date;
    }
    public double getPoints() {
        return points;
    }
    public void setPoints(double points) {
        this.points = points;
    }

}
