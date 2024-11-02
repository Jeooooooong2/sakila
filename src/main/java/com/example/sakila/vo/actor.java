package com.example.sakila.vo;

import lombok.Data;

@Data
public class actor {
	private int actorId; // Pk
	private String firstName;
	private String lastName;
	private String lastUpdate;
}
