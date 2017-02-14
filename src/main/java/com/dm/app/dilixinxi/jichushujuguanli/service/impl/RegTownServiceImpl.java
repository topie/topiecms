package com.dm.app.dilixinxi.jichushujuguanli.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dm.app.dilixinxi.jichushujuguanli.dao.MongoBaseDAO;
import com.dm.app.dilixinxi.jichushujuguanli.dao.RegTownDAO;
import com.dm.app.dilixinxi.jichushujuguanli.model.RegTown;
import com.dm.app.dilixinxi.jichushujuguanli.service.RegTownService;

@Service
public class RegTownServiceImpl extends MongoBaseServiceImpl<RegTown,String> implements RegTownService{
	@Resource(type=RegTownDAO.class)
	public void setBaseDao(MongoBaseDAO<RegTown,String> baseRepository){
		this.baseRepository = baseRepository;
	}
}
