package com.example.sakila.vo;

import lombok.Data;

@Data
public class address {
	private int addressId; // Pk
	private String address;
	private String address2;
	private String district;
	private int cityId;
	private String postalCode;
	private String phone;
	private String lastUpdate;
}
