package com.example.sakila.vo;

import lombok.Data;

@Data
public class customer {
	private int customerId; // Pk
	private int storeId;
	private String firstName;
	private String lastName;
	private String email;
	private int addressId;
	private String createDate;
	private String lastUpdate;
}
