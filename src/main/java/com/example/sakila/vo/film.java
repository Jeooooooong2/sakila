package com.example.sakila.vo;

import lombok.Data;

@Data
public class film {
	private int filmId; // Pk
	private String title;
	private String description;
	private String releaseYear;
	private int languageId;
	private int originalLanguageId;
	private int rentalDuration;
	private int rentalRate;
	private int length;
	private int replacementCost;
	private String rating;
	private String specialFeatures;
	private String lastUpdate;
}
