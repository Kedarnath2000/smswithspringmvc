package com.jspiders.smswithspringmvc4.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.smswithspringmvc4.pojo.AdminPOJO;
import com.jspiders.smswithspringmvc4.repository.AdminRepository;

@Component
public class AdminService {
	
	@Autowired
	private AdminRepository adminRepository;
	
	public void addAdmin(String userName,String email,String password) {
		AdminPOJO admin=new AdminPOJO();
		admin.setUserName(userName);
		admin.setEmail(email);
		admin.setPassword(password);
		adminRepository.addAdmin(admin);
	}
	
	public AdminPOJO logIn(String email,String password) {
		AdminPOJO adminTOCheck=null;
		List<AdminPOJO> admins=adminRepository.getAllAdmin();
		for(AdminPOJO admin:admins) {
			if(admin.getEmail().equals(email) && admin.getPassword().equals(password)) {
				adminTOCheck=admin;
			}
		}
		return adminTOCheck;
	}
	
	public void deleteAdmin(String email) {
		AdminPOJO adminToBeDeleted=null;
		List<AdminPOJO> admins=adminRepository.getAllAdmin();
		for(AdminPOJO admin:admins) {
			if(admin.getEmail().equals(email)) {
				adminToBeDeleted=admin;
			}
			
		}
		adminRepository.deleteAdmin(adminToBeDeleted);
	}
	
	public List<AdminPOJO> getAllAdmin() {
		return adminRepository.getAllAdmin();
		
	}
	
	

}
