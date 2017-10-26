package com.playground.intro;

import java.util.logging.Logger;

public class Person {

	private String name;
	private int age;
	private String eyeColor;
	private String gender;
	private double height;
	private double weight;

	public static void main(String[] args) {
		Person p = new Person("Joe", 30, "Grey", "Male", 183.2, 83.5);

		Logger logger = Logger.getLogger(Person.class.getName());
		
		logger.info("Name: " + p.getName());

	}
	
	public Person(String name, int age, String eyeColor, String gender, double d, double e) {
		this.name = name;
		this.age = age;
		this.eyeColor = eyeColor;
		this.gender = gender;
		this.height = d;
		this.weight = e;
	}
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getEyeColor() {
		return eyeColor;
	}

	public void setEyeColor(String eyeColor) {
		this.eyeColor = eyeColor;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

}
