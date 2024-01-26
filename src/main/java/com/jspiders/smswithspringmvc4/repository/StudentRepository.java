package com.jspiders.smswithspringmvc4.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.smswithspringmvc4.pojo.StudentPOJO;

@Component
public class StudentRepository {

	
	@Autowired
	private EntityManager entityManager;
	
	public void addStudent(StudentPOJO studentPOJO) {
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(studentPOJO);
		entityTransaction.commit();
		
	}
	
	public List<StudentPOJO> getAllStudents() {
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		Query query = entityManager.createQuery("SELECT student FROM StudentPOJO student");
		List<StudentPOJO> students = query.getResultList();
		entityTransaction.commit();
		return students;
	}
	
	public void deleteStudent(StudentPOJO student) {
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.remove(student);
		entityTransaction.commit();
	}
	
	public void updateStudent(StudentPOJO student) {
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(student);
		entityTransaction.commit();
		
	}
	
	public StudentPOJO getStudent(long id) {
		return entityManager.find(StudentPOJO.class, id);
		
	}
	
	public List<StudentPOJO> getStudentByPattern(String pattern) {
		Query query=entityManager.createQuery("SELECT student FROM StudentPOJO student WHERE name LIKE '%"+pattern+"%'");
		return query.getResultList();
		
	}
}
