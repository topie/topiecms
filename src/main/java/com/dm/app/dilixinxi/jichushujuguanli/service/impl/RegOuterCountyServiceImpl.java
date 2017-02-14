package com.dm.app.dilixinxi.jichushujuguanli.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dm.app.dilixinxi.jichushujuguanli.dao.MongoBaseDAO;
import com.dm.app.dilixinxi.jichushujuguanli.dao.RegOuterCountyDAO;
import com.dm.app.dilixinxi.jichushujuguanli.model.RegOuterCounty;
import com.dm.app.dilixinxi.jichushujuguanli.service.RegOuterCountyService;

@Service
public class RegOuterCountyServiceImpl extends MongoBaseServiceImpl<RegOuterCounty,String> implements RegOuterCountyService{
	
	@Resource(type=RegOuterCountyDAO.class)
	public void setBaseDao(MongoBaseDAO<RegOuterCounty,String> baseRepository){
		this.baseRepository = baseRepository;
	}
}
