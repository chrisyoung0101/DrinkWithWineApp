package com.claim.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity //table in SQL 
public class Customer {
	@Column
	private String firstName;
	@Column
	private String lastName;
	@Id //primary key annotation & creates a column for you
	private String email;
	@Column
	private String password;
	@Column //@GeneratedValue(strategy=GenerationType.AUTO) -> Auto generates the id only for integer type
	private String favorite;
	
	@OneToMany(fetch = FetchType.EAGER,mappedBy="Customer",cascade = CascadeType.ALL)
	private Set<Pairing> pairing;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public Set<Pairing> getPairing() {
		return pairing;
	}
	public void setPairing(Set<Pairing> pairing) {
		this.pairing = pairing;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFavorite() {
		return favorite;
	}
	public void setFavorite(String favorite) {
		this.favorite = favorite;
	}
	@Override
	public String toString() {
		return "Customer [firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", password="
				+ password + ", favorite=" + favorite + "]";
	}
	
	
	

}
