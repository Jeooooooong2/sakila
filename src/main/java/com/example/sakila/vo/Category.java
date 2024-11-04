package com.example.sakila.vo;

import lombok.Data;

@Data
public class Category {
	private int categoryId; // Pk
	private String name;
	private String lastUpdate;
}
