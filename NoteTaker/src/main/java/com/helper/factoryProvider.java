package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class factoryProvider {
 public  static SessionFactory factory;
 
 public static SessionFactory getFactory() {
	 
	 if(factory==null) {
		factory= new Configuration().configure("hibernate.xml").buildSessionFactory() ;
	 }
	 return factory;
 
}
 public static void closedFactory() {
	 if(factory.isOpen()) {
		 factory.close();
	 }
 }
}
