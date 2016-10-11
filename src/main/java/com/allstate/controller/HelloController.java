package com.allstate.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	
	@RequestMapping("/hello")
	public ResponseEntity<String> home(){

		return new ResponseEntity<String>( "hello world", HttpStatus.OK);
	}

}
