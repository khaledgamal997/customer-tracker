package com.luv2code.springdemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "customer")
public class Customer {

	@Id
	@Column(name ="id")
	private int id;

	@Column(name= "first_name")
	private String firstName;
	@Column(name="last_name")
	private String lastName;
	@Column(name="email")
	private String email;

	public Customer() {

	}
	public Customer(String firstName, String lastName, String email) {

		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {

		return firstName;
	}
	public void setFirstName(String firstName) {
		firstName= firstName.substring(0,1).toUpperCase()+firstName.substring(1).toLowerCase();

		this.firstName = firstName;
	}
	public String getLastName() {


		return lastName;
	}
	public void setLastName(String lastName) {
		lastName= lastName.substring(0,1).toUpperCase()+lastName.substring(1).toLowerCase();

		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + "]";
	}



}
