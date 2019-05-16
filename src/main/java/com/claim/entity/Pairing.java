package com.claim.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Pairing {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	
	@Column
	private String WineID1;
	
	@Column
	private String WineID2;
	
	@ManyToOne(cascade= CascadeType.ALL)
	@JoinColumn(name = "email")
	private Customer Customer;
	

	public Customer getCustomer() {
		return Customer;
	}

	public void setCustomer(Customer customer) {
		this.Customer = customer;
	}

	@Override
	public String toString() {
		return "Pairing [ID=" + ID + ", WineID1=" + WineID1 + ", WineID2=" + WineID2 + "]";
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getWineID1() {
		return WineID1;
	}

	public void setWineID1(String wineID1) {
		WineID1 = wineID1;
	}

	public String getWineID2() {
		return WineID2;
	}

	public void setWineID2(String wineID2) {
		WineID2 = wineID2;
	}
	
	
	
}
