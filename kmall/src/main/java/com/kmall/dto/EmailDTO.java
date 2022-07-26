package com.kmall.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
public class EmailDTO {

	private String senderName;	// 발신자 이름
	private String senderMail;	// 발신자 메일주소
	private String receiveMail; // 수신자 메일주소, 회원 메일주소사용
	private String subject; // 제목
	private String message; // 본문
	
	public EmailDTO() {
		this.senderName = "Kmall";
		this.senderName = "Kmall";
		this.subject = "임시 비밀번호입니다.";
		this.message = "임시 비밀번호 사용 후 변경부탁드립니다.";
	}
}
