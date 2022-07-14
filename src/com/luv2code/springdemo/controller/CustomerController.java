package com.luv2code.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.services.CustomerService;

@Controller
@RequestMapping("customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@GetMapping("list")
	public String listCustomer(Model theModel, @RequestParam(required=false) String sort) {
		// get customers from the service
		List<Customer> theCustomers = null;
		// check for sort field
		if (sort != null) {
			int theSortField = Integer.parseInt(sort);
			theCustomers = customerService.getCustomers(theSortField);				
		}
		else {
			// no sort field provided ... default to sorting by last name
			theCustomers = customerService.getCustomer();	
		}
		// add the customers to the model
		theModel.addAttribute("customer", theCustomers);
		return "list-customer";
	}

	@GetMapping("show-form-for-add")
	public String showFormForAdd(Model theModel) {

		Customer theCustomer = new Customer();

		theModel.addAttribute("customer", theCustomer);

		return "add-customer";
	}

	@PostMapping("save-customer")
	public String saveCustomer(@ModelAttribute("customer")Customer customer) {

		customerService.saveCustomer(customer);
		return "redirect:/customer/list";	
	}
	@GetMapping("show-form-for-update")
	public String updateCustomer(@RequestParam("customerId")int id, Model model) {

		Customer customer = customerService.getCustomerById(id);
		model.addAttribute("customer", customer);

		return "add-customer";
	}
	@GetMapping("delete-customer")
	public String deleteCustomer(@RequestParam("customerId") int id) {

		customerService.deleteCustomer(id);
		return "redirect:/customer/list";
	}

	@GetMapping("/search")
	public String searchCustomers(@RequestParam("theSearchName") String theSearchName,
			Model theModel) {
		// search customers from the service
		List<Customer> theCustomers = customerService.searchCustomers(theSearchName);

		// add the customers to the model
		theModel.addAttribute("customer", theCustomers);
		return "list-customer";        
	}

}












