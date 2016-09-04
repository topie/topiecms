package com.dm.websurvey.service;

import java.util.List;
import java.util.Map;

import com.dm.websurvey.model.Leader;
import com.github.pagehelper.PageInfo;

public interface LeaderService {

	public void add(Leader leader);
	public void delete(String id);
	public void update(Leader leader);
	public PageInfo<Leader> findByPage(int pageNum,int pageSize,Map map);
	List<Leader> findAll(String code);
	public Leader findOne(String id);
}
