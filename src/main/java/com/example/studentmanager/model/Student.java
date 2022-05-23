package com.example.studentmanager.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "students")
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "studentId")
    private String studentId;
    @Column(name = "name")
    private String name;
    @Column(name = "male")
    private boolean male;
    @Column(name = "birthday")
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date birthday;
    @Column(name = "placeOfBirth")
    private String placeOfBirth;
    @Column(name = "address")
    private String address;
    @Column(name = "depName")
    private String depName;

    public Student(String studentId, String name, boolean male, Date birthday, String placeOfBirth, String address, String depName) {
        this.studentId = studentId;
        this.name = name;
        this.male = male;
        this.birthday = birthday;
        this.placeOfBirth = placeOfBirth;
        this.address = address;
        this.depName = depName;
    }

    public Student() {

    }

    public Long getId() {
        return id;
    }

    public Student(String studentId) {
        this.studentId = studentId;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isMale() {
        return male;
    }

    public void setMale(boolean male) {
        this.male = male;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getPlaceOfBirth() {
        return placeOfBirth;
    }

    public void setPlaceOfBirth(String placeOfBirth) {
        this.placeOfBirth = placeOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDepName() {
        return depName;
    }

    public void setDepName(String depName) {
        this.depName = depName;
    }
}
