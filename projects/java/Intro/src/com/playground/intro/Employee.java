package com.playground.intro;

import java.math.BigDecimal;

public class Employee extends Person {
	
	private String taxpayerId;
	private String employeeNo;
	private BigDecimal salary;

	public Employee(String name, int age, String eyeColor, String gender, double d, double e) {
		super(name, age, eyeColor, gender, d, e);
		// TODO Auto-generated constructor stub
	}

	public String getTaxpayerId() {
		return taxpayerId;
	}

	public void setTaxpayerId(String taxpayerId) {
		this.taxpayerId = taxpayerId;
	}

	public String getEmployeeNo() {
		return employeeNo;
	}

	public void setEmployeeNo(String employeeNo) {
		this.employeeNo = employeeNo;
	}

	public BigDecimal getSalary() {
		return salary;
	}

	public void setSalary(BigDecimal salary) {
		this.salary = salary;
	}

}
