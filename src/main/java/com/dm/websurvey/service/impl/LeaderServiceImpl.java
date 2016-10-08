package com.dm.websurvey.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dm.platform.util.UUIDUtils;
import com.dm.websurvey.model.Leader;
import com.dm.websurvey.service.LeaderService;
import com.dm.websurvey.sqldao.LeaderMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class LeaderServiceImpl implements LeaderService{

	@Autowired
	LeaderMapper leadMapper;
	
	@Override
	public void add(Leader leader) {
		// TODO Auto-generated method stub
		leader.setId(UUIDUtils.getUUID16());
		leadMapper.insert(leader);
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		leadMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void update(Leader leader) {
		// TODO Auto-generated method stub
		leadMapper.updateByPrimaryKey(leader);
	}

	@Override
	public PageInfo<Leader> findByPage(int pageNum, int pageSize, Map map) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, pageSize);
		List<Leader> leaders = leadMapper.selectRecordByArgMap(map);
		PageInfo<Leader> pageInfo = new PageInfo<Leader>(leaders);
		return pageInfo;
	}
	
	@Override
	public List<Leader> findAll(String code,String org) {
		// TODO Auto-generated method stub
		Map map = new HashMap();
		Map m = new HashMap();
		m.put("type", code);
		m.put("org", org);
		map.put("model", m);
		List<Leader> leaders = leadMapper.selectRecordByArgMap(map);
		return leaders;
	}
	
	public Leader findOne(String id)
	{
		return leadMapper.selectByPrimaryKey(id);
	}

}
