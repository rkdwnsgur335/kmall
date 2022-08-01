package com.kmall.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kmall.domain.AdminVO;
import com.kmall.mapper.AdminMapper;

import lombok.Setter;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Setter(onMethod_ = {@Autowired})
	private AdminMapper admapper;
	
	@Override
	public AdminVO adLogin(AdminVO vo) {
		// TODO Auto-generated method stub
		return admapper.adLogin(vo);
	}

}
