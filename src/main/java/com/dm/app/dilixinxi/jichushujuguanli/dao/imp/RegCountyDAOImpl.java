package com.dm.app.dilixinxi.jichushujuguanli.dao.imp;

import org.springframework.stereotype.Component;

import com.dm.app.dilixinxi.jichushujuguanli.dao.RegCountyDAO;
import com.dm.app.dilixinxi.jichushujuguanli.model.RegCounty;

@Component("regCountyDAO")
public class RegCountyDAOImpl extends MongoBaseDAOImpl<RegCounty, String> implements
		RegCountyDAO {
}
