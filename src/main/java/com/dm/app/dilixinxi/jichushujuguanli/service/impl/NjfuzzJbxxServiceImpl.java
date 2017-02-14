package com.dm.app.dilixinxi.jichushujuguanli.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dm.app.dilixinxi.jichushujuguanli.dao.MongoBaseDAO;
import com.dm.app.dilixinxi.jichushujuguanli.dao.NjfuzzJbxxDAO;
import com.dm.app.dilixinxi.jichushujuguanli.model.NjfuzzJbxx;
import com.dm.app.dilixinxi.jichushujuguanli.service.NjfuzzJbxxService;

@Service
public class NjfuzzJbxxServiceImpl extends MongoBaseServiceImpl<NjfuzzJbxx,String> implements NjfuzzJbxxService{
	@Resource(type=NjfuzzJbxxDAO.class)
	public void setBaseDao(MongoBaseDAO<NjfuzzJbxx,String> baseRepository){
		this.baseRepository = baseRepository;
	}
}
