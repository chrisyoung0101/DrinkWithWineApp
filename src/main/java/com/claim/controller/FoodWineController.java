package com.claim.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.Customer;
import com.claim.entity.Pairing;
import com.claim.entity.food_wine;
import com.claim.repository.CustomerRepo;
import com.claim.repository.FoodWineRepo;



@Controller
public class FoodWineController {
	
	@Autowired
	FoodWineRepo foodWineRepo;
	
	@Autowired
	CustomerRepo custRepo;
	
	
	@RequestMapping(value = "/addItem", method = RequestMethod.POST)
	public ModelAndView addItem(@ModelAttribute("food_wine") food_wine foodWine, @ModelAttribute("pairing") Pairing p, @RequestParam("email") String email, HttpSession session) 
	
	{								
		
		p.setWineID1(foodWine.getWineName());
		
		
		session.setAttribute("foodSelection", foodWineRepo.getFoodByWineName(foodWine.getWineName())); 
		session.setAttribute("pairing2", p); 
		session.setAttribute("email", email); 
		
		return new ModelAndView("food_suggestion");
	}
	
	
	@RequestMapping(value = "/addItemFoodChoice", method = RequestMethod.POST)
	public ModelAndView addItemFood(@ModelAttribute("food_wine") food_wine foodWine, @ModelAttribute("pairing") Pairing p, @RequestParam("email") String email, HttpSession session) 
	
	{								
		
		
		p.setWineID1(foodWine.getWineName());
		
		 
		session.setAttribute("wineSelection", foodWineRepo.getWineByFoodName(foodWine.getWineName())); 
		session.setAttribute("pairing2", p); 
		session.setAttribute("email", email);
		
		return new ModelAndView("wine_suggestion");
	}
	
	
	@RequestMapping(value = "/addItemFood", method = RequestMethod.POST)
	public ModelAndView addItemFood(@ModelAttribute("pairing2") Pairing p2, @RequestParam("email") String email, HttpSession session) // "customer" created above,
	
	{								
		
		
		
		ArrayList<food_wine> foods = foodWineRepo.getFoodByWineName(p2.getWineID1());
		ArrayList<food_wine> wines = foodWineRepo.getWineByFoodName(p2.getWineID2());
		
		for(food_wine fw: foods) {
			if(fw.getFoodName().equals(p2.getWineID2())) session.setAttribute("myFood", fw);
		}
		
		for(food_wine fw: wines) {
			if(fw.getWineName().equals(p2.getWineID1())) session.setAttribute("myWine", fw);
		}

		session.setAttribute("total", 0);
		session.setAttribute("email", email);
		session.setAttribute("WineID1", p2.getWineID1());
		session.setAttribute("WineID2", p2.getWineID2());
		
		return new ModelAndView("current_pairing");
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@RequestParam("email") String email,@RequestParam("WineID1") String WineID1, @RequestParam("WineID2") String WineID2, HttpSession session) {
		
		
		Customer customer = custRepo.findById(email).get();
		
		Set<Pairing> pList = new HashSet<>();
		Pairing p1 = new Pairing();
		p1.setWineID1(WineID1);
		p1.setWineID2(WineID2);
		p1.setCustomer(customer);  
		pList.add(p1);
		
		customer.setPairing(pList);  
		custRepo.save(customer);
		session.setAttribute("email", email);
		
		
		
		
		return new ModelAndView("profile");
	}

	@RequestMapping(value = "/history", method = RequestMethod.POST)
	public ModelAndView history(@RequestParam("email") String email, HttpSession session) {
		
		Customer customer = custRepo.findById(email).get();
		ArrayList<ArrayList<food_wine>> all = new ArrayList<>();
		
		ArrayList<food_wine> allFoods = new ArrayList<>();
		ArrayList<food_wine> allWines = new ArrayList<>();
		
		
		for(Pairing p2: customer.getPairing()) {

			ArrayList<food_wine> foods = foodWineRepo.getFoodByWineName(p2.getWineID1());
			System.out.println("this is ArrayList foods  "  + foods);
			
			
			ArrayList<food_wine> wines = foodWineRepo.getWineByFoodName(p2.getWineID2());
			System.out.println("this is ArrayList wines  "  + wines);
			
			for(food_wine fw: foods) {
				System.out.println("I am fw from foods gettin' looped  "  + fw);
				
				if(fw.getFoodName().equals(p2.getWineID2())) allFoods.add(fw);
			}
			
			
		
			for(food_wine fw: wines) {
				if(fw.getWineName().equals(p2.getWineID1())) allWines.add(fw);
			}
		}
		
		session.setAttribute("allFoods", allFoods);
		session.setAttribute("allWines", allWines);
		
		
		return new ModelAndView("pairingHistory");
		
	}
	


	
	@RequestMapping("/wine_choice") 
	public ModelAndView wineChoice(HttpSession session, @ModelAttribute("customer") Customer customer ) {
		
		
		
		session.setAttribute("wineList", foodWineRepo.findAll());
		session.setAttribute("email", customer.getEmail());
		
		
		
		return new ModelAndView("wine_choice", "food_wine", new food_wine());
	}
	
	
	@RequestMapping("/food_choice")
	public ModelAndView foodChoice(HttpSession session, @ModelAttribute("customer") Customer customer) {
		
		 
		session.setAttribute("wineList", foodWineRepo.findAll()); 
		session.setAttribute("email", customer.getEmail());
		
		
		
		return new ModelAndView("food_choice", "food_wine", new food_wine());
	
	}
	
	
	@RequestMapping("/wine_suggestion")
	public ModelAndView wineSuggestion(@RequestParam("choice")String foodName, HttpSession session) {
		
		session.setAttribute("wineSelection", foodWineRepo.getWineByFoodName(foodName));
		return new ModelAndView("wine_suggestion");  

	}
	
	
	@RequestMapping("/food_suggestion")
	public ModelAndView foodSuggestion(@RequestParam("choice")String wineName, HttpSession session) {
		
		session.setAttribute("foodSelection", foodWineRepo.getFoodByWineName(wineName));
		return new ModelAndView("food_suggestion");

	}

}
