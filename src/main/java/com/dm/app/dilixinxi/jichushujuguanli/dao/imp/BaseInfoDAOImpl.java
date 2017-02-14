package com.dm.app.dilixinxi.jichushujuguanli.dao.imp;

import org.springframework.stereotype.Component;

import com.dm.app.dilixinxi.jichushujuguanli.dao.BaseInfoDAO;
import com.dm.app.dilixinxi.jichushujuguanli.model.BaseInfo;

@Component
public class BaseInfoDAOImpl extends MongoBaseDAOImpl<BaseInfo, String> implements
		BaseInfoDAO {

}
