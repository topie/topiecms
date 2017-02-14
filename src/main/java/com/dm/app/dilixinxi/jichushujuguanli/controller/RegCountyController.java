package com.dm.app.dilixinxi.jichushujuguanli.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dm.app.dilixinxi.jichushujuguanli.model.RegCounty;
import com.dm.app.dilixinxi.jichushujuguanli.service.RegCountyService;

@Controller
@RequestMapping("regCounty")
public class RegCountyController {
	@Autowired
	private RegCountyService service;
	
	@RequestMapping("list")
	@ResponseBody
	public List<RegCounty> list(){
		return this.service.findAll();
	}
	
	
	
}
