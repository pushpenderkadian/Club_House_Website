package com.starter;

import org.hibernate.Session;
import org.hibernate.Transaction;
import com.entities.Member;
import com.entities.SecretTherapy;
import com.helper.FactoryProvider;

public class Initial {

	public Initial() {
		// TODO Auto-generated constructor stub
	}
	public static void main(String args[]) {
		Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
//		public Member(String firstName, String lastName, String username, String password, char block)
		s.save(new Member("Aman","Kumar","aman26","1234",'D'));
		s.save(new Member("Sanjay","Kumar","anjay26","1234",'B'));
		s.save(new Member("Ram","Kumar","ram26","1234",'A'));
		s.save(new Member("Lakshay","Kumar","lakshay26","1234",'C'));
		s.save(new Member("Prem","Kumar","prem26","1234",'G'));
		s.save(new Member("Shravan","Kumar","shravan26","1234",'H'));
		s.save(new Member("Ramesh","Kumar","ramesh26","1234",'J'));
		s.save(new Member("Kirti","Sharma","kriti26","1234",'L'));
		s.save(new Member("pushpender","Kumar","pushp123","1234",'P'));
		s.save(new Member("Meghansh","Tyagi","megh26","1234",'Q'));
		s.save(new Member("Hardik","Bhanot","hardik26","1234",'M'));
		s.save(new Member("Mohan","Kumar","mohan26","1234",'L'));
		
        


	
		s.save(new SecretTherapy(1));
		s.save(new SecretTherapy(2));
		s.save(new SecretTherapy(3));
		s.save(new SecretTherapy(4));
		s.save(new SecretTherapy(5));
		s.save(new SecretTherapy(6));
		s.save(new SecretTherapy(7));
		s.save(new SecretTherapy(8));
		s.save(new SecretTherapy(9));
		s.save(new SecretTherapy(10));
		tx.commit();
		s.close();
	}
}
