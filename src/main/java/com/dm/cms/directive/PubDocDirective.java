package com.dm.cms.directive;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;

import com.dm.cms.model.CmsAttachment;
import com.dm.cms.model.CmsContent;
import com.dm.cms.service.CmsContentService;
import com.dm.platform.model.FileEntity;

import freemarker.core.Environment;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;

/**
 * @decription 内容置标
 * @author dyt
 *
 */
public class PubDocDirective implements TemplateDirectiveModel {

	private Logger log = LoggerFactory.getLogger(ChannelDirective.class);

	@Autowired
	CmsContentService cmsContentService;

	@Override
	public void execute(Environment env, Map params, TemplateModel[] loopVars,
			TemplateDirectiveBody body) throws TemplateException, IOException {
		// TODO Auto-generated method stub

		int contentId = Integer.valueOf(getRequiredParam(params, "id")
				.toString());
		CmsContent ce = cmsContentService.findOneById(contentId);
		String attachmentsID = null;
		Map doc = new HashMap();
		if (ce != null) {
			attachmentsID = ce.getAttachmentIds();
			doc.put("id", ce.getId());
			doc.put("infoCode", ce.getAuthor());
			doc.put("title", ce.getTitle());
			doc.put("brief", ce.getBrief());
			doc.put("publishTime", ce.getPublishDate());
			doc.put("publishOrg", ce.getOrigin());
			doc.put("keywords", ce.getKeywords());
			doc.put("ztType", ce.getTitleImageIllustrate());
			doc.put("zjType", ce.getTitleImageUrl());
			doc.put("contentText", ce.getContentText());
			doc.put("channelId", ce.getChannelId());
			doc.put("channelEnName", ce.getChannelEnName());
			doc.put("createTime", ce.getCreateTime());
			doc.put("createUser", ce.getCreateUser());
			doc.put("url", ce.getUrl());
			doc.put("titleStyle", ce.getTitleStyle());
			doc.put("templateId", ce.getTemplateId());
			doc.put("isComment", ce.getIsComment());
			doc.put("updateTime", ce.getUpdateTime());
			doc.put("isHtml", ce.getIsHtml());
			doc.put("mUrl", ce.getmUrl());
			doc.put("contentType", ce.getContentType());
		}

		List<CmsAttachment> cmsAttachmentList = cmsContentService
				.findCmsAttachmentByCmsContentId(contentId);

		env.setVariable("cmsAttachments",
				ObjectWrapper.DEFAULT_WRAPPER.wrap(cmsAttachmentList));

		env.setVariable("doc", ObjectWrapper.DEFAULT_WRAPPER.wrap(doc));
		body.render(env.getOut());
	}

	String getRequiredParam(Map params, String key) {
		Object value = params.get(key);
		if (StringUtils.isEmpty(value)) {
			log.error("id 参数必须指定！");
		}
		return value.toString();
	}

}
