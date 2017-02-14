package com.dm.app.dilixinxi.jichushujuguanli.dao.imp;

import org.springframework.stereotype.Component;

import com.dm.app.dilixinxi.jichushujuguanli.dao.RegOuterCountyDAO;
import com.dm.app.dilixinxi.jichushujuguanli.model.RegOuterCounty;

@Component("regOuterCountyDAO")
public class RegOuterCountyDAOImpl extends MongoBaseDAOImpl<RegOuterCounty, String> implements
		RegOuterCountyDAO {

}
