package com.luv2code.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.utils.SortUtils;
@Repository
public class CustomerDaoImpl implements CustomerDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Customer> getCustomer() {
		Session session = sessionFactory.getCurrentSession();
		Query<Customer> theQuery = session.createQuery("from Customer ORDER BY firstName",Customer.class);
		List<Customer> customers = theQuery.getResultList();

		return customers;
	}

	@Override
	public void saveCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(customer);

	}

	@Override
	public Customer getCustomerById(int id) {

		Session session = sessionFactory.getCurrentSession();
		Customer customer =session.get(Customer.class, id);

		return customer;
	}

	@Override
	public void deleteCustomer(int id) {

		Session session = sessionFactory.getCurrentSession();
		Query<?> query = session.createQuery("DELETE FROM Customer WHERE id="+id);
		query.executeUpdate();

	}

	@Override
	public List<Customer> searchCustomers(String theSearchName) {
		// get the current hibernate session

		Session currentSession = sessionFactory.getCurrentSession();	     
		Query<Customer> theQuery = null;	        
		//
		// only search by name if theSearchName is not empty
		//	     
		if (theSearchName != null && theSearchName.trim().length() > 0) {
			// search for firstName or lastName ... case insensitive	     
			theQuery =currentSession.createQuery("from Customer where lower(firstName) like :theName or lower(lastName) like :theName", Customer.class);
			theQuery.setParameter("theName", "%" + theSearchName.toLowerCase() + "%");	        
		}
		else
		{
			// theSearchName is empty ... so just get all customers
			theQuery =currentSession.createQuery("from Customer", Customer.class);               
		}
		// execute query and get result list
		List<Customer> customers = theQuery.getResultList();
		// return the results        
		return customers;	        
	}

	@Override
	public List<Customer> getCustomers(int theSortField) {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// determine sort field
		String theFieldName = null;

		switch (theSortField) {
		case SortUtils.FIRST_NAME: 
			theFieldName = "firstName";
			break;
		case SortUtils.LAST_NAME:
			theFieldName = "lastName";
			break;
		case SortUtils.EMAIL:
			theFieldName = "email";
			break;
		default:
			// if nothing matches the default to sort by lastName
			theFieldName = "lastName";
		}

		// create a query  
		String queryString = "from Customer order by " + theFieldName;
		Query<Customer> theQuery = 
				currentSession.createQuery(queryString, Customer.class);

		// execute query and get result list
		List<Customer> customers = theQuery.getResultList();

		// return the results		
		return customers;
	}



}
