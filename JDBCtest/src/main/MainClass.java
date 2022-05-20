package main;

import java.util.List;

import db.jdbcConnect;
import dto.Student;
//jdbctest하기
public class MainClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		jdbcConnect jdbcconn = new jdbcConnect();
		
		//jdbcconn.getConnection(); //db정보 얻기
		
		String name="홍길동";
		int number=1001;
		
		//int count=jdbcconn.insertData(number, name);
		//System.out.println("count:"+count);
		
		name="성춘향";
		number=1002;
		
		
		/*
		 * boolean b = jdbcconn.createData(name, number); 
		 * if(b) {
		 * System.out.println("문제없음"); 
		 * }
		 */
		  
		/*
		 * List<Student> list = jdbcconn.allSelect();
		 * 
		 * for (Student s : list) { System.out.println(s.toString()); }
		 */
		number=1003;
		name="성춘향";
		int count=jdbcconn.updateData(number, name);
		System.out.println("count:"+count);
		
		 
	}

}
