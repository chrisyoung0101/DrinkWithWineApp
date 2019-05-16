package com.claim.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.Customer;
import com.claim.entity.Pairing;
import com.claim.repository.CustomerRepo;

//Make this class a controller
@Controller
public class HomeController {

	// Injects the repository dependency in the class
	@Autowired
	CustomerRepo custRepo;
	
	@Autowired
	SendMail sendMail;

	// set up our urls // HomeController will handle all our url routing I believe
	// // equipped to handle multiple requests
	@RequestMapping("/")
	public ModelAndView home() {

		return new ModelAndView("index"); // redirects to index page.
	}

	@RequestMapping("/register")
	public ModelAndView register() {
		return new ModelAndView("register", "customer", new Customer());
		// go to the register page, assign a blank object -> new Customer(), name it
		// "customer"
		// "register" = go to register page
		// "customer" = name of the object submitted through register form
		// new Customer() = create a new Customer Object
		// this object is referred in the jsp as modelAttribute in form:form tag
		
		

	}

	// direct link
	@RequestMapping(value = "/sign_in", method = RequestMethod.GET)
	public ModelAndView signInCustomer()

	{
		return new ModelAndView("sign_in");
	}

	@RequestMapping("/about_us")
	public ModelAndView aboutUs() {
		return new ModelAndView("about_us");

	}
	
	@RequestMapping("/profile")
	public ModelAndView profileCust() {
		return new ModelAndView("profile");

	}
	
	
	@RequestMapping("/current_pairing")
	public ModelAndView currentPairing () {
		return new ModelAndView("current_pairing");

	}
	
	@RequestMapping("/current_order")
	public ModelAndView currentOrder() {
		return new ModelAndView("current_order");

	}
	
	@RequestMapping("/confirm_order")
	public ModelAndView confirmOrder() {
		return new ModelAndView("confirm_order");
		
	}
	
	@RequestMapping("/order_confirmation")
	public ModelAndView orderConfirmation() {
		return new ModelAndView("order_confirmation");

	}
	
	@RequestMapping("/new_member")
	public ModelAndView newMember() {
		return new ModelAndView("new_member");

	}
	
	@RequestMapping("/learnWine")
	public ModelAndView learn_Wine() {
		return new ModelAndView("learnWine");

	}
	
	
	
	
	
	
	
	
	
	
	

	
	// registerCustomer is the action on form in jsp
	// after register form is submitted, take us to sign in page and add data to
	// entity aka table
	@RequestMapping(value = "/registerCustomer", method = RequestMethod.POST)
	public ModelAndView registerCustomer(@ModelAttribute("customer") Customer customer) // "customer" created above,
	
	{								//subject line = "Wine App Confirmation!"
		sendMail.sendMail(customer.getEmail(), "Wine App Confirmation!", "Wine App Registration Confirmed.  Thank you "+ customer.getFirstName() + " !" + " We love " + customer.getFavorite() + " too!  Come in and get a glass on us!");																			// passed in here. // get the
		System.out.println(customer);
		custRepo.save(customer); // adds customer to database and correct table
		return new ModelAndView("sign_in");
	}

	@RequestMapping(value = "/signInCustomer", method = RequestMethod.POST)
	public ModelAndView signInCustomer(@ModelAttribute("customer") Customer customer, HttpSession session) // "customer" created above, //setting logged in user on session if the if statement is successful
																						// passed in here. // get the
																						// customer object from JSP &
																						// map to a java class of
																						// Customer type
	{
		
		System.out.println(customer);
		Customer loggedInCustomer = custRepo.login(customer.getEmail(), customer.getPassword());
		if(loggedInCustomer == null)
		{
			return new ModelAndView("sign_in"); 
		}
		else {
			//when sign in, create a pairing object  
			session.setAttribute("pairing", new Pairing());
			session.setAttribute("loggedInCustomer", loggedInCustomer);
			session.setAttribute("email", loggedInCustomer.getEmail());
			return new ModelAndView("profile");
		}
				
	}
}
