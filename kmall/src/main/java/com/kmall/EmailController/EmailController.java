package com.kmall.EmailController;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/email/*")
@RestController
public class EmailController {

	@GetMapping("/send")
	public ResponseEntity<String> send(){
		
		ResponseEntity<String> entity = null;
		
		
		return entity;
		
	}
}
