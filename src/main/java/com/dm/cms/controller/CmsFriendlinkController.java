package com.dm.cms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dm.cms.model.CmsFriendlink;
import com.dm.cms.service.CmsFriendlinkService;
import com.dm.platform.util.PageConvertUtil;
import com.dm.platform.util.ResponseUtil;

@Controller
@RequestMapping("/cms/friendlink")
public class CmsFriendlinkController {
	@Autowired
	private CmsFriendlinkService cmsFriendlinkService;
	
	@RequestMapping("/page")
	public String page(){
		return "cms/friendlink/page";
	}
	@RequestMapping("/list")
	@ResponseBody
	public Object list(@RequestParam(value = "pageNum", required = false,defaultValue="1") Integer pageNum,
			@RequestParam(value = "pageSize", required = false,defaultValue="5") Integer pageSize,
			CmsFriendlink cmsFriendlink) {
		if (cmsFriendlink.getSiteId() == null && cmsFriendlink.getId() == null)
			return PageConvertUtil.emptyGrid();
		return PageConvertUtil.grid(cmsFriendlinkService.findCmsFriendlinkByPage(
				pageNum, pageSize, cmsFriendlink));
		
	}
	@RequestMapping("/load")
	@ResponseBody
	public Object load(Integer id){
		return this.cmsFriendlinkService.loadById(id);
	}
	@RequestMapping("/insertOrUpdate")
	@ResponseBody
	public Object insertOrUpdate(CmsFriendlink cmsFriendlink){
		if(cmsFriendlink.getId()==null){
			this.cmsFriendlinkService.insert(cmsFriendlink);
		}else{
			this.cmsFriendlinkService.update(cmsFriendlink);
		}
		return ResponseUtil.success("操作成功!");
	}
	@RequestMapping("/delete")
	@ResponseBody
	public Object delete(Integer id){
		this.cmsFriendlinkService.delete(id);
		return ResponseUtil.success("操作成功!");
	}
	@RequestMapping("/setshow")
	@ResponseBody
	public Object setShow(Long id){
		this.cmsFriendlinkService.setIsShow(id);
		return ResponseUtil.success();
	}
}
