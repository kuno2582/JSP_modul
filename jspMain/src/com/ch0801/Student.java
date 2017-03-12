package com.ch0801;
/*
자바빈(JavaBeans) == 데이터 객체
JAVA언어의 데이터(속성)와 데이터에 관련한 기능(메소드)으로 이루어진 클래스
반복적인 작업을 효율적으로 하기 위해서 자바빈을 사용합니다.
웹프로그래밍에서 데이터의 표현을 목적으로 사용합니다.
즉, jsp페이지를 만들고, 액션태그를 이용해서 자바빈을 사용합니다.

데이터가 있어서 그에 해당하는 getter와 setter 메소드가 있습니다.



*/
public class Student {

	private String name;
	private int age;
	private int grade;
	private int studentNumber;
	
	public Student(){
		
	}
	
	public String getName(){
		return name;
	}
	
	public void setName(String name){
		this.name = name;
	}
	
	public int getAge(){
		return age;
	}
	
	public void setAge(int age){
		this.age = age;
	}
	
	public int getGrade(){
		return grade;
	}
	
	public void setGrade(int grade){
		this.grade = grade;
	}
	
	public int getStudentNumber(){
		return studentNumber;
	}
	
	public void setStudentNumber(int studentNumber){
		this.studentNumber = studentNumber;
	}
}
