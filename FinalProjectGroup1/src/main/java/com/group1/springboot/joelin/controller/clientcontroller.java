package com.group1.springboot.joelin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class clientcontroller {

	
	 //clientstay.jsp
    @GetMapping("/clientstay")
    public String sendReadClientSpEvent() {
     return "Client/clientstay";
     
    }
	
    //hotelstay.jsp
    @GetMapping("/hotelstay")
    public String hotelstay() {
     return "Client/hotelstay";
     
    }
	
	
	
	
}
