package com.dm.app.dilixinxi.jichushujuguanli.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dm.app.dilixinxi.jichushujuguanli.dao.MongoBaseDAO;
import com.dm.app.dilixinxi.jichushujuguanli.dao.SnqyJbxxDAO;
import com.dm.app.dilixinxi.jichushujuguanli.model.SnqyJbxx;
import com.dm.app.dilixinxi.jichushujuguanli.service.SnqyJbxxService;

@Service
public class SnqyJbxxServiceImpl extends MongoBaseServiceImpl<SnqyJbxx,String> implements SnqyJbxxService{
	@Resource(type=SnqyJbxxDAO.class)
	public void setBaseDao(MongoBaseDAO<SnqyJbxx,String> baseRepository){
		this.baseRepository = baseRepository;
	}
}
