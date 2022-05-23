package com.example.studentmanager.service;

import com.example.studentmanager.model.Student;
import com.example.studentmanager.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class StudentService {
    @Autowired
    private StudentRepository studentRepository;
    
    public List<Student> getAllStudents() {
        List<Student> students = new ArrayList<>();
        studentRepository.findAll().forEach(students::add);

        return students;
    }

    public Student getStudentById(Long id) {
        Optional<Student> student = studentRepository.findById(id);
        if (student.isPresent()) {
            return student.get();
        }
        return null;
    }

    public Student createStudent(Student student) {
        Student studentData = studentRepository.save(student);
        return studentData;
    }

    public Student updateStudent(long id, Student newStudent) {
        Student studentData = studentRepository.findById(id)
                .map(student -> {
                    student.setStudentId(newStudent.getStudentId());
                    student.setName(newStudent.getName());
                    student.setMale(newStudent.isMale());
                    student.setAddress(newStudent.getAddress());
                    student.setBirthday(newStudent.getBirthday());
                    student.setPlaceOfBirth(newStudent.getPlaceOfBirth());
                    student.setDepName(newStudent.getDepName());
                    return studentRepository.save(student);
                })
                .orElseGet(() -> {
                    return studentRepository.save(newStudent);
                });

        return studentData;
    }

    public void deleteStudent(long id) {
        Optional<Student> student = studentRepository.findById(id);
        if (student.isPresent()){
            studentRepository.delete(student.get());
        }
    }
}
