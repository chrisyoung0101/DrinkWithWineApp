package com.claim.repository;

import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.claim.entity.Customer;
import com.claim.entity.Pairing;


//Create one repo per entity 
//Parameters -> <tablename, datatype of the primary key>

//Repo is also used to write custom SQL queries
public interface CustomerRepo extends JpaRepository<Customer, String>{
	// first c is the star and second c is the table renamed as c  
	@Query("Select c from Customer c where email = ?1 and password =?2") 
	Customer login(String email, String password); //email = ?1 & password=?2  //Customer = return type
	
//	@Query("Select p from Pairing where email = ?1") 
//	Set<Pairing> getPairing(String email); 
	
}
