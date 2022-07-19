package com.kmall.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class LoginDTO {

	private String mem_id;
	private String mem_pw;
}
