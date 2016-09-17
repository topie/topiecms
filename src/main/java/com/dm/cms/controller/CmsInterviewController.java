package com.dm.cms.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dm.cms.model.CmsInterview;
import com.dm.cms.model.CmsInterviewAbout;
import com.dm.cms.model.CmsInterviewImage;
import com.dm.cms.model.CmsInterviewRecord;
import com.dm.cms.model.CmsInterviewRole;
import com.dm.cms.service.CmsInterviewService;
import com.dm.platform.util.PageConvertUtil;
import com.dm.platform.util.ResponseUtil;
import com.dm.platform.util.SqlParam;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/cms/interview")
public class CmsInterviewController {
	
	@Autowired
	private CmsInterviewService cmsInterviewService;
	
	@InitBinder
    public void initBinder(ServletRequestDataBinder binder){
        binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"),
                true));
    }
	@RequestMapping("/page")
	public String page(Model model,Integer id){
		CmsInterview record = 
		cmsInterviewService.loadOne(id);
		model.addAttribute("model", record);
		return "cms/interview/page";
	}
	@RequestMapping("/add")
	public String add(Model model,CmsInterview record){
		model.addAttribute("model", record);
		return "cms/interview/page";
	}
	@RequestMapping("/insertOrUpdate")
	@ResponseBody
	public Object insertOrUpdate(CmsInterview interview){
		if(interview.getId()!=null)
			cmsInterviewService.update(interview);
		else
			cmsInterviewService.insert(interview);
		Map map =  ResponseUtil.success();
		map.put("interviewId", interview.getId());
		return map;
	}
	@RequestMapping("/check")
	@ResponseBody
	public Object insertOrUpdate(String ids,String status){
		 this.cmsInterviewService.checke(ids,status);
		 return ResponseUtil.success();
	}
	@RequestMapping("/list")
	@ResponseBody
	public Object list(
			@RequestParam(value = "pageNum", required = false) Integer pageNum,
			@RequestParam(value = "pageSize", required = false) Integer pageSize,
			CmsInterview cmsInterview,
			@RequestParam(value = "sort", required = false) String sort) {
		if (cmsInterview.getChannelId() == null)
			return PageConvertUtil.emptyGrid();
		Map map = new SqlParam<CmsInterview>().autoParam(cmsInterview, sort);
		PageInfo<CmsInterview> page = cmsInterviewService.findByPage(
				pageNum, pageSize, map);
		return PageConvertUtil.grid(page);
	}
	//逻辑删除
	@RequestMapping("/delete")
	@ResponseBody
	public Object delete(Integer id){
		if(id==null){
			return ResponseUtil.error("请输入key");
		}
		this.cmsInterviewService.updateStatusToDelete(id);
		return ResponseUtil.success();
	}
	@RequestMapping("/load")
	@ResponseBody
	public Object load(Integer id){
		return this.cmsInterviewService.loadOne(id);
	}
	@RequestMapping("/publish")
	@ResponseBody
	public Object publish(Integer id){
		this.cmsInterviewService.publish(id);
		return ResponseUtil.success();
	}
	@RequestMapping("/loadRecords")
	@ResponseBody
	public Object loadRecords(Integer interviewId,@RequestParam(value="startTime",required= false)String startTime){
		Map map = new HashMap<String,Object>();
		map.put("interviewId", interviewId);
		map.put("startTime", startTime);
		return this.cmsInterviewService.loadRecords(map);
	}
	@RequestMapping("/listRecord")
	@ResponseBody
	public Object listRecords(
			@RequestParam(value = "pageNum", required = false,defaultValue="1") Integer pageNum,
			@RequestParam(value = "pageSize", required = false,defaultValue="5") Integer pageSize,
			CmsInterviewRecord record){
		if(record.getInterviewId()==null){
			return PageConvertUtil.emptyGrid();
		}
		Map map  = new HashMap();
		map.put("model", record);
		PageInfo page = this.cmsInterviewService.listRecord(pageNum,pageSize,map);
		return PageConvertUtil.grid(page);
	}
	@RequestMapping("/listAbout")
	@ResponseBody
	public Object listAbout(
			@RequestParam(value = "pageNum", required = false,defaultValue="1") Integer pageNum,
			@RequestParam(value = "pageSize", required = false,defaultValue="5") Integer pageSize,
			CmsInterviewAbout record){
		if(record.getInterviewId()==null){
			return PageConvertUtil.emptyGrid();
		}
		Map map  = new HashMap();
		map.put("model", record);
		return PageConvertUtil.grid(this.cmsInterviewService.listAbout(pageNum,pageSize,map));
	}
	@RequestMapping("/listRole")
	@ResponseBody
	public Object listRole(
			@RequestParam(value = "pageNum", required = false,defaultValue="1") Integer pageNum,
			@RequestParam(value = "pageSize", required = false,defaultValue="5") Integer pageSize,
			CmsInterviewRole record){
		if(record.getInterviewId()==null){
			return PageConvertUtil.emptyGrid();
		}
		Map map  = new HashMap();
		map.put("model", record);
		return PageConvertUtil.grid(this.cmsInterviewService.listRole(pageNum,pageSize,map));
	}
	@RequestMapping("/listImage")
	@ResponseBody
	public Object listImage(
			@RequestParam(value = "pageNum", required = false,defaultValue="1") Integer pageNum,
			@RequestParam(value = "pageSize", required = false,defaultValue="5") Integer pageSize,
			CmsInterviewImage record){
		if(record.getInterviewId()==null){
			return PageConvertUtil.emptyGrid();
		}
		Map map  = new HashMap();
		map.put("model", record);
		return PageConvertUtil.grid(this.cmsInterviewService.listImage(pageNum,pageSize,map));
	}
	@RequestMapping("/loadImages")
	@ResponseBody
	public Object loadImage(Integer interviewId,@RequestParam(value="startTime",required= false)String startTime){
		Map map = new HashMap<String,Object>();
		map.put("interviewId", interviewId);
		map.put("startTime", startTime);
		return this.cmsInterviewService.loadImages(map);
	}
	@RequestMapping("/loadAbouts")
	@ResponseBody
	public Object loadAbouts(Integer interviewId,@RequestParam(value="startTime",required= false)String startTime){
		Map map = new HashMap<String,Object>();
		map.put("interviewId", interviewId);
		map.put("startTime", startTime);
		return this.cmsInterviewService.loadAbouts(map);
	}
	@RequestMapping("/loadRoles")
	@ResponseBody
	public Object listRole(Integer interviewId){
		Map map = new HashMap<String,Object>();
		map.put("interviewId", interviewId);
		List<CmsInterviewRole> roles = this.cmsInterviewService.loadRoles(map);
		return roles;
	}
	@RequestMapping("/loadRolesRadio")
	@ResponseBody
	public Object listRoler(CmsInterviewRole role){
		Map map = new HashMap<String,Object>();
		map.put("model", role);
		List<CmsInterviewRole> roles = this.cmsInterviewService.loadRoles(map);
		List<Map> radios = new ArrayList<Map>();
		for(CmsInterviewRole ro:roles){
			Map m = new HashMap();
			m.put("text", ro.getRoleName()+"["+ro.getPersonName()+"]");
			m.put("value", ro.getId());
			radios.add(m);
		}
		return radios;
	}
	@RequestMapping("/insertOrUpdateRole")
	@ResponseBody
	public Object insertOrUpdateRole(CmsInterviewRole role){
		if(role.getId()==null){
			this.cmsInterviewService.insertRole(role);
		}else{
			this.cmsInterviewService.updateRole(role);
		}
		return ResponseUtil.success();
	}
	@RequestMapping("/deleteRole")
	@ResponseBody
	public Object deleteRole(Integer roleId){
		this.cmsInterviewService.deleteRole(roleId);
		return ResponseUtil.success();
	}
	@RequestMapping("/loadRole")
	@ResponseBody
	public Object loadRole(Integer roleId){
		return this.cmsInterviewService.findRoleById(roleId);
		//return ResponseUtil.success();
	}
	@RequestMapping("/insertOrUpdateRecord")
	@ResponseBody
	public Object insertOrUpdateRecord(CmsInterviewRecord interviewRecord){
		if(interviewRecord.getId()!=null){
			this.cmsInterviewService.updateRecord(interviewRecord);
		}else{
			this.cmsInterviewService.insertRecord(interviewRecord);
		}
		return ResponseUtil.success();
	}
	@RequestMapping("/deleteRecord")
	@ResponseBody
	public Object deleteRecord(Integer recordId){
		this.cmsInterviewService.updateRecordToDelete(recordId);
		return ResponseUtil.success();
	}
	@RequestMapping("/loadRecord")
	@ResponseBody
	public Object loadRecord(Integer recordId){
		return this.cmsInterviewService.loadRecord(recordId);
	}
	@RequestMapping("/insertOrUpdateAbout")
	@ResponseBody
	public Object insertOrUpdateAbout(CmsInterviewAbout about){
		if(about.getId()==null){
			this.cmsInterviewService.insertAbout(about);
		}
		else{
			this.cmsInterviewService.updateAbout(about);
		}
		return ResponseUtil.success();
	}
	@RequestMapping("/deleteAbout")
	@ResponseBody
	public Object deleteAbout(Integer aboutId){
		this.cmsInterviewService.updateAboutTodelete(aboutId);
		return ResponseUtil.success();
	}
	@RequestMapping("/loadAbout")
	@ResponseBody
	public Object loadAbout(Integer aboutId){
		return this.cmsInterviewService.loadAbout(aboutId);
		
	}
	@RequestMapping("/insertOrUpdateImage")
	@ResponseBody
	public Object insertOrUpdateImage(CmsInterviewImage image){
		if(image.getId()==null){
			this.cmsInterviewService.insertImage(image);
		}else{
			this.cmsInterviewService.updateImage(image);
		}
		return ResponseUtil.success();
	}
	@RequestMapping("/deleteImage")
	@ResponseBody
	public Object deleteImage(Integer imageId){
		this.cmsInterviewService.updateImageToDelete(imageId);
		return ResponseUtil.success();
	}
	@RequestMapping("/loadImage")
	@ResponseBody
	public Object loadImage(Integer imageId){
		return this.cmsInterviewService.loadImage(imageId);
	}
}