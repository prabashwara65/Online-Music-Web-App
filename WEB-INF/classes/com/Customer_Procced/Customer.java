package com.Customer_Procced;


public class Customer {
	
	private int id;
	private String name;
	private String email;
	private String phone;
	private String Username;
	private String Password;
	
	
	
	
	public Customer(int id, String name, String email, String phone, String username, String password) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.Username = username;
		this.Password = password;
	}
	
	
	
	public int getId() {
		return id;
	}



	public String getName() {
		return name;
	}


	
	public String getEmail() {
		return email;
	}


	public String getPhone() {
		return phone;
	}


	public String getUsername() {
		return Username;
	}
	

	public String getPassword() {
		return Password;
	}


	


	
	
}