package com.jspiders.smswithspringmvc4.config;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {

	@Bean
	public EntityManager getObject() {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("student");
		return entityManagerFactory.createEntityManager();

	}

}
