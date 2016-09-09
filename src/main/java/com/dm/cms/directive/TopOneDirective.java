package com.dm.cms.directive;

import java.io.IOException;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.dm.cms.model.CmsContent;
import com.dm.cms.service.CmsContentService;

import freemarker.core.Environment;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

public class TopOneDirective implements TemplateDirectiveModel{

	@Autowired
	CmsContentService cmsContentService;
	
	@Override
	public void execute(Environment env, Map params, TemplateModel[] loopVars,
			TemplateDirectiveBody body) throws TemplateException, IOException {
		// TODO Auto-generated method stub
		CmsContent cmsContent = cmsContentService.selectTopOne();
		if(params.get("titleLeft")!=null)
		{
	  int len = Integer.valueOf(params.get("titleLeft").toString());
		if(cmsContent!=null && StringUtils.isNotEmpty(cmsContent.getTitle()) && cmsContent.getTitle().length()>len)
		{
			cmsContent.setTitle(cmsContent.getTitle().substring(0, len));
		}
		}
		env.setVariable("cmsContent",ObjectWrapper.DEFAULT_WRAPPER.wrap(cmsContent));
		body.render(env.getOut()); 
	}

}
