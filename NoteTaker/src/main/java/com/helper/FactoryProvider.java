package com.helper;


import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class FactoryProvider {
	public static SessionFactory factory;

	public void closeFactory() {
		if(factory.isOpen())
		{
			factory.close();
		}
	}

	
	public static SessionFactory getFactory() {
		if(factory==null)
		{
			 factory= (SessionFactory) new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		}
	
		return factory;
	}

}
