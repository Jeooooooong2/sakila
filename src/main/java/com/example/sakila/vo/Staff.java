package com.example.sakila.vo;

import lombok.Data;

@Data
public class Staff {
	private int staffId; // Pk
	private String firstName;
	private String lastName;
	private int addressId; // Fk
	private String email;
	private int storeId; // Fk 외래키
	private int active;
	private String username;
	private String password;
	private String lastUpdate;
}
