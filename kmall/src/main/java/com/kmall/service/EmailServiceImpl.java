package com.kmall.service;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.kmall.dto.EmailDTO;

import lombok.Setter;

@Service
public class EmailServiceImpl implements EmailService {
	
	@Setter(onMethod_ = {@Autowired})
	private JavaMailSender mailSender;
	
	@Override
	public void sendMail(EmailDTO dto, String message) {
		
		//메일구성정보를 담당하는 객체
		MimeMessage msg = mailSender.createMimeMessage();
		
		try {
			//받는사람 메일주소
			msg.addRecipient(RecipientType.TO, new InternetAddress(dto.getReceiveMail()));
			//보내는 사람(메일, 이름)
			msg.addFrom(new InternetAddress[] {new InternetAddress(dto.getSenderMail(), dto.getSenderName())});
			//제목
			msg.setSubject(dto.getSubject(), "utf-8");
			//본문내용
			msg.setText(message, "utf-8");
			
			mailSender.send(msg);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
}
