package com.dm.app.dilixinxi.jichushujuguanli.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dm.app.dilixinxi.jichushujuguanli.dao.BaseInfoDAO;
import com.dm.app.dilixinxi.jichushujuguanli.dao.MongoBaseDAO;
import com.dm.app.dilixinxi.jichushujuguanli.model.BaseInfo;
import com.dm.app.dilixinxi.jichushujuguanli.service.BaseInfoService;

@Service
public class BaseInfoServiceImpl extends MongoBaseServiceImpl<BaseInfo,String> implements BaseInfoService{
	@Resource(type=BaseInfoDAO.class)
	public void setBaseDao(MongoBaseDAO<BaseInfo,String> baseRepository){
		this.baseRepository = baseRepository;
	}
}
