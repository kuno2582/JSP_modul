package com.ch0801;
/*
�ڹٺ�(JavaBeans) == ������ ��ü
JAVA����� ������(�Ӽ�)�� �����Ϳ� ������ ���(�޼ҵ�)���� �̷���� Ŭ����
�ݺ����� �۾��� ȿ�������� �ϱ� ���ؼ� �ڹٺ��� ����մϴ�.
�����α׷��ֿ��� �������� ǥ���� �������� ����մϴ�.
��, jsp�������� �����, �׼��±׸� �̿��ؼ� �ڹٺ��� ����մϴ�.

�����Ͱ� �־ �׿� �ش��ϴ� getter�� setter �޼ҵ尡 �ֽ��ϴ�.



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
