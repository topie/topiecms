package com.dm.app.dilixinxi.cunqing.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dm.app.dilixinxi.cunqing.service.impl.CunqingServiceImpl;
import com.dm.app.dilixinxi.jichushujuguanli.service.RegCountyService;

@Controller
@RequestMapping("portal")
public class CunqingPortalController {
	
	@Autowired
	CunqingServiceImpl cimp;
	@Autowired
	RegCountyService rimp;
	
	@RequestMapping("cqpage")
	public String page(){
		List<Map> list = rimp.getCunTongji();
		for(Map m:list){
			System.out.println("{");
			for(Iterator<String> i = m.keySet().iterator();i.hasNext();){
				String key = i.next();
				System.out.println(key+":"+m.get(key));
			}
			System.out.println("},");
		}
		return "app/cqpage";
	}
}
