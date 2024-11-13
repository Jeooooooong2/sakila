package com.example.sakila.vo;

import lombok.Data;

@Data
public class Actor {
	private Integer actorId; // Pk
	private String firstName;
	private String lastName;
	private String lastUpdate;
}
