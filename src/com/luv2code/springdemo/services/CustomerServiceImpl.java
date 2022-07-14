package com.luv2code.springdemo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.luv2code.springdemo.dao.CustomerDao;
import com.luv2code.springdemo.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao customerDAO;

	@Transactional
	@Override
	public List<Customer> getCustomer(){

		return customerDAO.getCustomer();
	}

	@Override
	@Transactional
	public void saveCustomer(Customer customer) {
		customerDAO.saveCustomer(customer);

	}

	@Override
	@Transactional
	public Customer getCustomerById(int id) {
		Customer customer = customerDAO.getCustomerById(id);
		return customer;
	}

	@Override
	@Transactional
	public void deleteCustomer(int id) {
		customerDAO.deleteCustomer(id);
	}

	@Override
	@Transactional
	public List<Customer> searchCustomers(String theSearchName) {

		return customerDAO.searchCustomers(theSearchName);

	}

	@Override
	@Transactional
	public List<Customer> getCustomers(int theSortField) {

		return customerDAO.getCustomers(theSortField);
	}



}
