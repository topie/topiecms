package com.dm.app.dilixinxi.jichushujuguanli.dao.imp;

import org.springframework.stereotype.Component;

import com.dm.app.dilixinxi.jichushujuguanli.dao.RegVillageDAO;
import com.dm.app.dilixinxi.jichushujuguanli.model.RegVillage;

@Component("regVillageDAO")
public class RegVillageDAOImpl extends MongoBaseDAOImpl<RegVillage, String> implements
		RegVillageDAO {

}
