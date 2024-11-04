package com.example.sakila.vo;

import lombok.Data;

@Data
public class City {
	private int cityId; // Pk
	private String city;
	private int countryId;
	private String lastUpdate;
}
