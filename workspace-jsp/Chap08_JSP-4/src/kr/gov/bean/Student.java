package kr.gov.bean;

/*
 * 이런 클래스를 만든 것을 JSP에서는 빈(bean)을 만들었다고 하는 것임.
 * useBean 액션 태그를 이용해서 데이터를 저장, 수정, 읽기가 가능해짐.
 */
public class Student {
	
	private String name;
	private int age;
	private int grade;
	private int studentNum;
	
	//기본 생성자
	public Student() {
		
	}
	
	//setter와 getter 메서드 생성
	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public int getStudentNum() {
		return studentNum;
	}

	public void setStudentNum(int studentNum) {
		this.studentNum = studentNum;
	}

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
}
