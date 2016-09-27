package com.dm.cms.directive;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.dm.cms.util.PageUtil;
import com.dm.websurvey.model.WebSurvey;
import com.dm.websurvey.service.WebSurveyService;

import freemarker.core.Environment;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

public class WebsurveyListDirective implements TemplateDirectiveModel{

	@Autowired
	WebSurveyService websurveyService;
	
	
	@Override
	public void execute(Environment env, Map params, TemplateModel[] loopVars,
			TemplateDirectiveBody body) throws TemplateException, IOException {
		// TODO Auto-generated method stub
		
		Integer pageSize = params.get("pageSize") == null ? 12 : Integer.valueOf(params.get("pageSize")
				.toString());
		Integer pageNum = params.get("pageNum") == null ? 1 : Integer
				.valueOf(params.get("pageNum").toString());
		String type =  params.get("type")==null?"1":params.get("type").toString();
		String[] typeArray = type.split(",");
		Map map = new HashMap();
		map.put("type", Arrays.asList(typeArray));
		List<WebSurvey> websureys = websurveyService.selectRecordByArgMap(pageNum, pageSize, map).getList();
		env.setVariable("websurveys",ObjectWrapper.DEFAULT_WRAPPER.wrap(websureys));
		body.render(env.getOut());  
	}
}
