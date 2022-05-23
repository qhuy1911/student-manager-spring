package com.example.studentmanager.controller;

import com.example.studentmanager.model.Student;
import com.example.studentmanager.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class StudentController {
    @Autowired
    private StudentService studentService;

    @GetMapping("/")
    public String index(Model model) {
        String message = "Student Manager";

        model.addAttribute("message", message);

        return "index";
    }

    @GetMapping("/students")
    public String viewStudentList(Model model) {
        List<Student> students = studentService.getAllStudents();

        model.addAttribute("students", students);

        return "studentManager";
    }

    @GetMapping("/students/{id}")
    public String viewStudentDetail(Model model, @PathVariable("id") long id) {
        Student student = studentService.getStudentById(id);

        if (student != null) {
            model.addAttribute(student);
        }

        return "studentDetail";
    }

    @GetMapping("/students/add")
    public String addStudent(Model model) {
        String message = "Add new student";
        Student student = new Student();

        model.addAttribute("message", message);
        model.addAttribute("student", student);
        return "addStudent";
    }

    @PostMapping("/students/add")
    public String addStudent(Model model, @Valid @ModelAttribute("student") Student student) {
        studentService.createStudent(student);
        List<Student> students = studentService.getAllStudents();
        model.addAttribute("students",students);
        return "studentManager";
    }

    @GetMapping("/students/{id}/edit")
    public String editStudent(Model model, @PathVariable("id") long id) {
        String message = "Add new student";
        Student student = studentService.getStudentById(id);

        model.addAttribute("message", message);
        model.addAttribute(student);
        return "editStudent";
    }

    @PostMapping("/students/{id}/edit")
    public String editStudent(Model model, @PathVariable("id") long id, @Valid @ModelAttribute Student student) {
        studentService.updateStudent(id, student);
        List<Student> students = studentService.getAllStudents();
        model.addAttribute("students",students);
        return "studentManager";
    }

    @DeleteMapping("/students/{id}")
    public String deleteStudent(@PathVariable("id") long id) {
        studentService.deleteStudent(id);
        return "studentManager";
    }
}
