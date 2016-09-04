package com.dm.websurvey.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dm.cms.model.CmsContent;
import com.dm.platform.model.UserAccount;
import com.dm.platform.util.PageConvertUtil;
import com.dm.platform.util.ResponseUtil;
import com.dm.platform.util.SqlParam;
import com.dm.platform.util.UserAccountUtil;
import com.dm.websurvey.model.UserEmailConfig;
import com.dm.websurvey.model.WebSurvey;
import com.dm.websurvey.service.UserEmailConfigService;
import com.dm.websurvey.service.WebSurveyService;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/websurvey")
public class WebSurveyController {

	@Value("${template.basePath}")
	String templateFolder;
	
	@Autowired
	WebSurveyService webSurveyService;
	
	@Autowired
	UserEmailConfigService userEmailConfigService;
	
	@RequestMapping("/page")
	public String webPage(Model model)
	{
		return "/websurvey/page";
	}
	
	@RequestMapping("/updateRecontent")
	@ResponseBody
	public Map update(Model model,String id,String recontent)
	{
		webSurveyService.update(id, recontent);
		return ResponseUtil.success("操作成功！");
	}
	
	@RequestMapping("/delete")
	@ResponseBody
	public Map update(Model model,String id)
	{
		webSurveyService.delete(id);
		return ResponseUtil.success("操作成功！");
	}
	
	@RequestMapping("/load")
	@ResponseBody
	public WebSurvey loadRecontent(Model model,String id)
	{
		return webSurveyService.findOne(id);
	}
	
	@RequestMapping("/list")
	@ResponseBody
	public Map list(Model model,WebSurvey searchEntity,Integer pageSize,Integer pageNum,String sort)
	{
		 sort = StringUtils.isEmpty(sort)?"inputDate_desc":sort;
		 UserAccount user = UserAccountUtil.getInstance().getCurrentUserAccount();
		 UserEmailConfig config =  userEmailConfigService.findByUserId(user.getCode());
		 Map map = new SqlParam<WebSurvey>().autoParam(searchEntity,sort);
		 if(config!=null)
		 {
			 List<String> toUsers = new ArrayList<String>();
			 if(!StringUtils.isEmpty(config.getLeaderId()))
			 {
			 toUsers.addAll(Arrays.asList(config.getLeaderId().split(",")));
			 }
			 if(!StringUtils.isEmpty(config.getOrgId()))
			 {
				 toUsers.addAll(Arrays.asList(config.getOrgId().split(",")));
			 }
			 
			 map.put("toUsers", toUsers);
		PageInfo<WebSurvey> webSurveys = webSurveyService.selectRecordByArgMap(pageNum,pageSize,map);
		return PageConvertUtil.grid(webSurveys);
		 }
		 else
		 {
				return PageConvertUtil.emptyGrid();
		 }
	}
	
}
