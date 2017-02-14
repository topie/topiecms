package com.dm.app.dilixinxi.jichushujuguanli.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dm.app.dilixinxi.jichushujuguanli.model.RegOuterCounty;
import com.dm.app.dilixinxi.jichushujuguanli.service.RegOuterCountyService;

@Controller
@RequestMapping("regOuterCounty")
public class RegOuterCountyController {
	@Autowired
	private RegOuterCountyService service;
	
	@RequestMapping("list")
	@ResponseBody
	public List<RegOuterCounty> list(){
		return this.service.findAll();
	}

}
