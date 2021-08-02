package com.demo.controller;

import com.demo.dao.CustomerDAO;
import com.demo.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	// dependency injection
	@Autowired
	private CustomerDAO customerDAO;

	@RequestMapping("/list")
	public String listCustomers(Model model) {

		// get customers from the dao
		List<Customer> customers = customerDAO.getCumstomers();

		// add the customers to the model
		model.addAttribute("customers", customers);

		// return the view
		return "list-customers";
	}
	
}


