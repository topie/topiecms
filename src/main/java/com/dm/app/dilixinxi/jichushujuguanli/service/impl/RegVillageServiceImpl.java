package com.dm.app.dilixinxi.jichushujuguanli.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dm.app.dilixinxi.jichushujuguanli.dao.MongoBaseDAO;
import com.dm.app.dilixinxi.jichushujuguanli.dao.RegVillageDAO;
import com.dm.app.dilixinxi.jichushujuguanli.model.RegVillage;
import com.dm.app.dilixinxi.jichushujuguanli.service.RegVillageService;

@Service
public class RegVillageServiceImpl extends MongoBaseServiceImpl<RegVillage,String> implements RegVillageService{
	
	@Resource(type=RegVillageDAO.class)
	public void setBaseDao(MongoBaseDAO<RegVillage,String> baseRepository){
		this.baseRepository = baseRepository;
	}
}
