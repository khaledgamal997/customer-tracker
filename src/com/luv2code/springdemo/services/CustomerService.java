package com.luv2code.springdemo.services;

import java.util.List;

import com.luv2code.springdemo.entity.Customer;

public interface CustomerService {

	public List<Customer> getCustomer();
	public void saveCustomer(Customer customer);
	public Customer getCustomerById(int id);
	public void deleteCustomer(int id);
	public List<Customer> searchCustomers(String theSearchName);
	public List<Customer> getCustomers(int theSortField);
}
