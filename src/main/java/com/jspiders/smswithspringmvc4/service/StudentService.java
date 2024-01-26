package com.jspiders.smswithspringmvc4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.smswithspringmvc4.pojo.StudentPOJO;
import com.jspiders.smswithspringmvc4.repository.StudentRepository;

@Component
public class StudentService {
	
	@Autowired
	private StudentRepository studentRepository;
	
	public void addStudent(String name,String email,long mobile,int age) {
		StudentPOJO studentPOJO=new StudentPOJO();
		studentPOJO.setName(name);
		studentPOJO.setEmail(email);
		studentPOJO.setMobile(mobile);
		studentPOJO.setAge(age);
		System.out.println(name);
		studentRepository.addStudent(studentPOJO);
	}
	
	public List<StudentPOJO> getAllStudents() {
		return studentRepository.getAllStudents();
		
	}
	
	public String deleteStudent(long id) {
		StudentPOJO studentToBeDeleted=null;
		List<StudentPOJO> students=studentRepository.getAllStudents();
		for(StudentPOJO student:students) {
			if(student.getId()==id) {
				studentToBeDeleted=student;
			}
		}
		
		if(studentToBeDeleted==null) {
			return "Student not Found";
		}
		else {
			studentRepository.deleteStudent(studentToBeDeleted);
			return "Student deleted";
		}
	}
	
	public StudentPOJO editStudent(long id) {
		StudentPOJO studentToBeUpdated=null;
		List<StudentPOJO> students=studentRepository.getAllStudents();
		for(StudentPOJO student:students) {
			if(student.getId()==id) {
				studentToBeUpdated=student;
			}
		}
	System.out.println(studentToBeUpdated);
		
		return studentToBeUpdated;
		
	}
	
	public void updateStudent(long id,String name,String email,long mobile,int age) {
		StudentPOJO student=studentRepository.getStudent(id);
		student.setName(name);
		student.setEmail(email);
		student.setMobile(mobile);
		student.setAge(age);
		studentRepository.addStudent(student);
		
	}
	
	public List<StudentPOJO> getStudentByPattern(String pattern) {
		return studentRepository.getStudentByPattern(pattern);
		
	}

}
