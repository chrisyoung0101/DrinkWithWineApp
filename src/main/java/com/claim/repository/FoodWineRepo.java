package com.claim.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.claim.entity.food_wine;

public interface FoodWineRepo extends JpaRepository<food_wine, Integer>{

	@Query("Select w from food_wine w where wineName =?1")
	ArrayList<food_wine> getFoodByWineName(String wineName);
	
	//Test Code
	@Query("Select f from food_wine f where foodName =?1")
	ArrayList<food_wine> getWineByFoodName(String foodName);
	
	
	

}
