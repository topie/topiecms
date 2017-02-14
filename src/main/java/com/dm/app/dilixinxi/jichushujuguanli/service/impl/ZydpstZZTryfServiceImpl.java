package com.dm.app.dilixinxi.jichushujuguanli.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dm.app.dilixinxi.jichushujuguanli.dao.MongoBaseDAO;
import com.dm.app.dilixinxi.jichushujuguanli.dao.ZydpstZZTryfDAO;
import com.dm.app.dilixinxi.jichushujuguanli.model.ZydpstZZTryf;
import com.dm.app.dilixinxi.jichushujuguanli.service.ZydpstZZTryfService;

@Service
public class ZydpstZZTryfServiceImpl extends MongoBaseServiceImpl<ZydpstZZTryf,String> implements ZydpstZZTryfService{
	@Resource(type=ZydpstZZTryfDAO.class)
	public void setBaseDao(MongoBaseDAO<ZydpstZZTryf,String> baseRepository){
		this.baseRepository = baseRepository;
	}
}
