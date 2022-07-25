package com.kmall.service;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;

import com.kmall.dto.EmailDTO;

import lombok.Setter;

public class EmailServiceImpl implements EmailService {
	
	@Setter(onMethod_ = {@Autowired})
	private JavaMailSender mailSender;
	
	@Override
	public void sendMail(EmailDTO dto, String message) {
		
		//메일구성정보를 담당하는 객체
		MimeMessage msg = mailSender.createMimeMessage();
		
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
}
