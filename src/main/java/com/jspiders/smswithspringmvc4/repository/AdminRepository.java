package com.jspiders.smswithspringmvc4.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.smswithspringmvc4.pojo.AdminPOJO;

@Component
public class AdminRepository {
	
	@Autowired
	private EntityManager entityManager;
	
	public void addAdmin(AdminPOJO admin) {
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(admin);
		entityTransaction.commit();
	}
	
	public List<AdminPOJO> getAllAdmin() {
		Query query = entityManager.createQuery("SELECT admin FROM AdminPOJO admin");
		return query.getResultList();
		
		
	}
	
	public void deleteAdmin(AdminPOJO admin) {
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.remove(admin);
		entityTransaction.commit();
		
	}

}
