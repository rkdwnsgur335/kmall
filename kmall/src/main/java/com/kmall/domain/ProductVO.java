package com.kmall.domain;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class ProductVO {

	//pdt_num, cate_code, pdt_name, pdt_price, pdt_discount, pdt_detail, pdt_img_folder, pdt_img, pdt_amount,
	//pdt_buy, pdt_date_sub, pdt_date_up
	
	private Integer pdt_num;
	private Integer cate_code;
	private String  pdt_name;
	private int  	pdt_price;
	private int  	pdt_discount;
	private String 	pdt_detail;
	private String 	pdt_img_folder;
	private String 	pdt_img;
	private int 	pdt_amount;
	private String 	pdt_buy;
	private Date 	pdt_date_sub;
	private Date 	pdt_date_up;
	private Integer pdt_gender;
	
	private MultipartFile uploadFile;
}
