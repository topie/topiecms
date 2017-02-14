package com.dm.atform.directive;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.dm.atform.model.AtTable;
import com.dm.atform.service.AtTableService;

import freemarker.core.Environment;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
/**
 * 获取分类
 * @author Mr.Jin
 *
 */
public class AtTableListDirective implements TemplateDirectiveModel{

	private Logger log  = LoggerFactory.getLogger(AtTableListDirective.class);
	@Autowired
	private AtTableService tableService;
	@Override
	public void execute(Environment env, Map params, TemplateModel[] loopVars,
			TemplateDirectiveBody body) throws TemplateException, IOException {
		Object type = params.get("type");
		String t = type==null?null:type.toString();
		String pid = params.get("pId")==null?null:params.get("pId").toString();
		Map map = new HashMap();
		map.put("status", "1");//
		map.put("type",t);
		map.put("pId",pid);
		Map param = new HashMap();
		param.put("model",map);
		List<AtTable> page = tableService.findAllByArg(param);
		env.setVariable("tableList",ObjectWrapper.DEFAULT_WRAPPER.wrap(page));
		body.render(env.getOut());  
	}

}
