package com.demo.controller;

import com.demo.entity.Customer;
import com.demo.service.CustomerService;
import com.demo.util.ViewNames;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	// dependency injection for service instead dao directly
	@Autowired
	//private CustomerDAO customerDAO;
	private CustomerService customerService;

	@GetMapping("/list")
	public String listCustomers(Model model) {

		// get customers from the dao
		List<Customer> customers = customerService.getCustomers();

		// add the customers to the model
		model.addAttribute("customers", customers);

		// return the view
		return ViewNames.CUSTOMER_LIST;
	}

	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model model) {

		Customer customer = new Customer();
		// add object to model
		model.addAttribute("customer", customer);
		return ViewNames.CUSTOMER_FORM;
	}

	@PostMapping("saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer customer) {

		// save the customer using service
		customerService.saveCustomer(customer);
		return "redirect:/customer/list";
	}
}


