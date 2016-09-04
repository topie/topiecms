package com.dm.websurvey.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dm.cms.model.CmsContent;
import com.dm.platform.util.UUIDUtils;
import com.dm.websurvey.model.Leader;
import com.dm.websurvey.model.WebSurvey;
import com.dm.websurvey.service.WebSurveyService;
import com.dm.websurvey.sqldao.LeaderMapper;
import com.dm.websurvey.sqldao.WebSurveyMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class WebSurveyServiceImpl implements WebSurveyService{
	
	@Autowired
	WebSurveyMapper webSurveyMapper;
	@Autowired
	LeaderMapper leaderMapper;
	
	@Override
	public WebSurvey add(WebSurvey webSurvey)
	{
		webSurvey.setId(UUIDUtils.getUUID16());
		webSurvey.setInputDate(new Date());
		Leader leader = leaderMapper.selectByPrimaryKey(webSurvey.getCodeId());
		webSurveyMapper.insertSelective(webSurvey);
		return webSurvey;
	}
	
	@Override
	public void update(String id,String reContent)
	{
		WebSurvey webSurvey = webSurveyMapper.selectByPrimaryKey(id);
		webSurvey.setRecontent(reContent);
		webSurvey.setReplyDate(new Date());
		webSurveyMapper.updateByPrimaryKeySelective(webSurvey);
	}

	@Override
	public PageInfo<WebSurvey> selectRecordByArgMap(int pageNum,int pageSize,Map args) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, pageSize);
		List<WebSurvey> webSurveys = webSurveyMapper.selectRecordByArgMap(args);
		PageInfo<WebSurvey> pageInfo = new PageInfo<WebSurvey>(webSurveys);
		return pageInfo;
	}

	public WebSurvey findOne(String id)
	{
		return webSurveyMapper.selectByPrimaryKey(id);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		webSurveyMapper.deleteByPrimaryKey(id);
	}
}
