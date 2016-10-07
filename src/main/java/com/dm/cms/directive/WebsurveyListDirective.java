package com.dm.cms.directive;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.dm.cms.model.CmsChannel;
import com.dm.cms.service.CmsChannelService;
import com.dm.cms.util.PageUtil;
import com.dm.websurvey.model.WebSurvey;
import com.dm.websurvey.service.WebSurveyService;
import com.github.pagehelper.PageInfo;

import freemarker.core.Environment;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

public class WebsurveyListDirective implements TemplateDirectiveModel{

	@Autowired
	WebSurveyService websurveyService;

	@Autowired
	CmsChannelService cmsChannelService;
	
	@Override
	public void execute(Environment env, Map params, TemplateModel[] loopVars,
			TemplateDirectiveBody body) throws TemplateException, IOException {
		
		Integer pageSize = params.get("pageSize") == null ? 12 : Integer.valueOf(params.get("pageSize")
				.toString());
		Integer pageNum = params.get("pageNum") == null ? 1 : Integer
				.valueOf(params.get("pageNum").toString());
		String isOpen = params.get("isOpen")==null?null:String.valueOf(params.get("isOpen"));
		String type =  params.get("type")==null?"1":params.get("type").toString();
		String[] typeArray = type.split(",");
		Map map = new HashMap();
		map.put("isOpen", isOpen);
		map.put("type", Arrays.asList(typeArray));
		PageInfo<WebSurvey> page = websurveyService.selectRecordByArgMap(pageNum, pageSize, map);
		Long total = page.getTotal();
		List<WebSurvey> websureys = page.getList();
		env.setVariable("websurveys",ObjectWrapper.DEFAULT_WRAPPER.wrap(websureys));
		Integer channelId = Integer.valueOf(params.get("channelId")==null?"0":params.get("channelId").toString());
		CmsChannel channel = cmsChannelService.findOneById(channelId);
		if(channel!=null){
		env.setVariable("pagination", ObjectWrapper.DEFAULT_WRAPPER
				.wrap(PageUtil.getInstance().channelPagination(channel,
						pageNum, total, pageSize)));
		env.setVariable("paginationMobile", ObjectWrapper.DEFAULT_WRAPPER
				.wrap(PageUtil.getInstance().channelMobilePagination(channel, pageNum, total, pageSize)));
		env.setVariable("paginationlist",
		        ObjectWrapper.DEFAULT_WRAPPER.wrap(PageUtil.getInstance().channelPaginationList(channel,pageNum,total,pageSize)));
		}
		body.render(env.getOut());  
	}
	
}
