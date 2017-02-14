package com.dm.app.dilixinxi.jichushujuguanli.dao.imp;

import org.springframework.stereotype.Component;

import com.dm.app.dilixinxi.jichushujuguanli.dao.RegTownDAO;
import com.dm.app.dilixinxi.jichushujuguanli.model.RegTown;

@Component("regTownDAO")
public class RegTownDAOImpl extends MongoBaseDAOImpl<RegTown, String> implements
		RegTownDAO {

}
