package com.dm.cms.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dm.cms.model.CmsVote;
import com.dm.cms.model.CmsVoteOption;
import com.dm.cms.service.CmsVoteService;
import com.dm.platform.util.PageConvertUtil;
import com.dm.platform.util.ResponseUtil;
import com.dm.platform.util.SqlParam;

@Controller
@RequestMapping("/cms/vote")
public class CmsVoteController {
	
	@Autowired
	private CmsVoteService cmsVoteService;
	@RequestMapping("/list")
	@ResponseBody
	public Object list(
			@RequestParam(value = "pageNum", required = false) Integer pageNum,
			@RequestParam(value = "pageSize", required = false) Integer pageSize,
			CmsVote record,
			@RequestParam(value = "sort", required = false) String sort){
		if(record.getChannelId()==null){
			return PageConvertUtil.emptyGrid();
		}
		Map map = new SqlParam<CmsVote>().autoParam(record, sort);
		return PageConvertUtil.grid(this.cmsVoteService.findPage(pageNum,pageSize,map));
	}
	@RequestMapping("/insertOrUpdate")
	@ResponseBody
	public Object insertOrUpdate(CmsVote record){
		if(record.getId()==null){
			this.cmsVoteService.insert(record);
		}else{
			this.cmsVoteService.update(record);
		}
		return ResponseUtil.success();
	}
	@RequestMapping("/delete")
	@ResponseBody
	public Object delete(Integer id){
		this.cmsVoteService.updateStatus(id,"9");
		return ResponseUtil.success();
	}
	@RequestMapping("/check")
	@ResponseBody
	public Object check(Integer id){
		this.cmsVoteService.updateStatus(id,"2");
		return ResponseUtil.success();
	}
	@RequestMapping("/back")
	@ResponseBody
	public Object back(Integer id){
		this.cmsVoteService.updateStatus(id,"3");
		return ResponseUtil.success();
	}
	@RequestMapping("/pass")
	@ResponseBody
	public Object pass(Integer id){
		this.cmsVoteService.updateStatus(id,"4");
		return ResponseUtil.success();
	}
	@RequestMapping("/publish")
	@ResponseBody
	public Object publish(Integer id){
		this.cmsVoteService.updateStatus(id,"5");
		return ResponseUtil.success();
	}
	@RequestMapping("/listOpt")
	@ResponseBody
	public Object listOpt(
			@RequestParam(value = "pageNum", required = false) Integer pageNum,
			@RequestParam(value = "pageSize", required = false) Integer pageSize,
			CmsVoteOption record,
			@RequestParam(value = "sort", required = false) String sort){
		if(record.getVoteId()==null){
			return PageConvertUtil.emptyGrid();
		}
		Map map = new SqlParam<CmsVoteOption>().autoParam(record, sort);
		return PageConvertUtil.grid(this.cmsVoteService.findOptPage(pageNum,pageSize,map));
	}
	@RequestMapping("/insertOrUpdateOpt")
	@ResponseBody
	public Object insertOrUpdateOpt(CmsVoteOption record){
		if(record.getId()==null)
		cmsVoteService.insertOpt(record);
		else{
			cmsVoteService.updateOpt(record);
		}
		return ResponseUtil.success();
	}
	@RequestMapping("/deleteOpt")
	@ResponseBody
	public Object deleteOpt(Integer id){
		this.cmsVoteService.deleteOpt(id);
		return ResponseUtil.success();
	}
	@RequestMapping("/sub")
	@ResponseBody
	public Object sub(Integer voteId,String optionIds){
		this.cmsVoteService.commitCheck(voteId,optionIds);
		return ResponseUtil.success();
	}
	
}
