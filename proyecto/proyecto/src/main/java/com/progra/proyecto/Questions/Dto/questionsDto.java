package com.progra.proyecto.Questions.Dto;



import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="QuestionsDB")
public class questionsDto {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private int question_id;
    private int subjectid;
    private String label;
    private String question_option;
public int getQuestion_id() {
    return question_id;
}
public void setQuestion_id(int question_id) {
    this.question_id = question_id;
}
public String getLabel() {
    return label;
}
public void setLabel(String label) {
    this.label = label;
}
public String getQuestion_option() {
    return question_option;
}
public void setQuestion_option(String question_option) {
    this.question_option = question_option;
}
public int getSubjectid() {
    return subjectid;
}
public void setSubjectid(int subjectid) {
    this.subjectid = subjectid;
}
}
