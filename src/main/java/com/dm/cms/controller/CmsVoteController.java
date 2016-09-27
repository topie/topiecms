package com.dm.cms.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dm.cms.model.CmsTemplateConfig;
import com.dm.cms.model.CmsVote;
import com.dm.cms.model.CmsVoteOption;
import com.dm.cms.service.CmsTemplateConfigService;
import com.dm.cms.service.CmsVoteService;
import com.dm.platform.util.PageConvertUtil;
import com.dm.platform.util.ResponseUtil;
import com.dm.platform.util.SqlParam;

@Controller
@RequestMapping("/cms/vote")
public class CmsVoteController {

	@Autowired
	private CmsVoteService cmsVoteService;
	@Autowired
	private CmsTemplateConfigService cmsTemplateConfigService;

	@RequestMapping("/list")
	@ResponseBody
	public Object list(
			@RequestParam(value = "pageNum", required = false) Integer pageNum,
			@RequestParam(value = "pageSize", required = false) Integer pageSize,
			CmsVote record,
			@RequestParam(value = "sort", required = false) String sort) {
		if (record.getChannelId() == null) {
			return PageConvertUtil.emptyGrid();
		}
		Map map = new SqlParam<CmsVote>().autoParam(record, sort);
		return PageConvertUtil.grid(this.cmsVoteService.findPage(pageNum,
				pageSize, map));
	}

	@RequestMapping("/insertOrUpdate")
	@ResponseBody
	public Object insertOrUpdate(CmsVote record) {
		if (record.getFiled2() == null) {// 设置默认模板
			CmsTemplateConfig c =cmsTemplateConfigService.load(null,
					record.getChannelId());
			if(c!=null)
				record.setFiled2(c.getContentTemplateId().toString());
		}
		if (record.getId() == null) {
			record.setStatus("0");
			this.cmsVoteService.insert(record);
		} else {
			record.setStatus("0");
			this.cmsVoteService.update(record);
		}
		return ResponseUtil.success();
	}

	@RequestMapping("/delete")
	@ResponseBody
	public Object delete(String voteIds) {
		if (voteIds == null || voteIds.equals("")) {
			return ResponseUtil.error("操作失败,请选择要删除的项!");
		}
		for (String index : voteIds.split(",")) {
			Integer id = Integer.valueOf(index);
			this.cmsVoteService.updateStatus(id, "9");
		}
		return ResponseUtil.success();
	}

	@RequestMapping("/load")
	@ResponseBody
	public Object load(Integer id) {
		return this.cmsVoteService.findOne(id);
	}

	@RequestMapping("/loadOpt")
	@ResponseBody
	public Object loadOpt(Integer id) {
		return this.cmsVoteService.findOneOpt(id);
	}
	@RequestMapping("/saveAndCommit")
	@ResponseBody
	public Object saveAndCommit(CmsVote record) {
	if (record.getId() == null) {
		record.setStatus("1");
		this.cmsVoteService.insert(record);
	} else {
		record.setStatus("1");
		this.cmsVoteService.update(record);
	}
	return ResponseUtil.success("提交成功");
	}
	@RequestMapping("/saveAndPublish")
	@ResponseBody
	public Object saveAndPublish(CmsVote record) {
	if (record.getId() == null) {
		record.setStatus("2");
		this.cmsVoteService.insert(record);
	} else {
		record.setStatus("2");
		this.cmsVoteService.update(record);
	}
	return ResponseUtil.success("提交成功");
	}
	@RequestMapping("/check")
	@ResponseBody
	public Object check(String voteIds) {
		if (voteIds == null && voteIds.equals("")) {
			return ResponseUtil.error();
		}
		for (String i : voteIds.split(",")) {
			Integer id = Integer.valueOf(i);
			this.cmsVoteService.updateStatus(id, "1");
		}
		return ResponseUtil.success();
	}

	@RequestMapping("/back")
	@ResponseBody
	public Object back(String voteIds) {
		if (voteIds == null && voteIds.equals("")) {
			return ResponseUtil.error();
		}
		for (String i : voteIds.split(",")) {
			Integer id = Integer.valueOf(i);
			this.cmsVoteService.updateStatus(id, "3");
		}
		return ResponseUtil.success();
	}

	@RequestMapping("/pass")
	@ResponseBody
	public Object pass(String voteIds) {
		if (voteIds == null && voteIds.equals("")) {
			return ResponseUtil.error();
		}
		for (String i : voteIds.split(",")) {
			Integer id = Integer.valueOf(i);
			this.cmsVoteService.updateStatus(id, "4");
		}
		return ResponseUtil.success();
	}

	@RequestMapping("/publish")
	@ResponseBody
	public Object publish(String voteIds) {
		if (voteIds == null && voteIds.equals("")) {
			return ResponseUtil.error();
		}
		for (String i : voteIds.split(",")) {
			Integer id = Integer.valueOf(i);
			this.cmsVoteService.updateStatus(id, "2");
		}
		return ResponseUtil.success();
	}

	@RequestMapping("/listOpt")
	@ResponseBody
	public Object listOpt(
			@RequestParam(value = "pageNum", required = false) Integer pageNum,
			@RequestParam(value = "pageSize", required = false) Integer pageSize,
			CmsVoteOption record,
			@RequestParam(value = "sort", required = false) String sort) {
		if (record.getVoteId() == null) {
			return PageConvertUtil.emptyGrid();
		}
		Map map = new SqlParam<CmsVoteOption>().autoParam(record, sort);
		return PageConvertUtil.grid(this.cmsVoteService.findOptPage(pageNum,
				pageSize, map));
	}

	@RequestMapping("/insertOrUpdateOpt")
	@ResponseBody
	public Object insertOrUpdateOpt(CmsVoteOption record) {
		if (record.getId() == null)
			cmsVoteService.insertOpt(record);
		else {
			cmsVoteService.updateOpt(record);
		}
		return ResponseUtil.success();
	}

	@RequestMapping("/deleteOpt")
	@ResponseBody
	public Object deleteOpt(Integer id) {
		this.cmsVoteService.deleteOpt(id);
		return ResponseUtil.success();
	}

	@InitBinder
	public void initBinder(ServletRequestDataBinder binder) {
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"), true));
	}

}