package com.dm.cms.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dm.cms.model.CmsVote;
import com.dm.cms.model.CmsVoteOption;
import com.dm.cms.service.CmsVoteService;
import com.dm.cms.sqldao.CmsVoteMapper;
import com.dm.cms.sqldao.CmsVoteOptionMapper;
import com.dm.platform.model.UserAccount;
import com.dm.platform.util.UserAccountUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class CmsVoteServiceImpl implements CmsVoteService {

	@Autowired
	private CmsVoteMapper cmsVoteMapper;

	@Autowired
	private CmsVoteOptionMapper cmsVoteOptionMapper;

	@Override
	public PageInfo<CmsVote> findPage(Integer pageNum, Integer pageSize, Map map) {
		PageHelper.startPage(pageNum, pageSize);
		List<CmsVote> list = this.cmsVoteMapper.findList(map);
		return new PageInfo<CmsVote>(list);
	}

	@Override
	public void insert(CmsVote record) {
		UserAccount user = UserAccountUtil.getInstance()
				.getCurrentUserAccount();
		if (user != null)
			record.setCreateUser(user.getCode());
		record.setCreateTime(new Date());
		this.cmsVoteMapper.insertSelective(record);
	}

	@Override
	public void update(CmsVote record) {
		this.cmsVoteMapper.updateByPrimaryKeySelective(record);

	}

	@Override
	public void updateStatus(Integer id, String state) {
		if (state.equals("5")) {
			pulish(id);
		} else {
			CmsVote record = new CmsVote();
			record.setId(id);
			record.setStatus(state);
			cmsVoteMapper.updateByPrimaryKeySelective(record);
		}

	}

	private void pulish(Integer id) {
		// TODO Auto-generated method stub

	}

	@Override
	public PageInfo<CmsVoteOption> findOptPage(Integer pageNum,
			Integer pageSize, Map map) {
		PageHelper.startPage(pageNum, pageSize);
		List<CmsVoteOption> list = this.cmsVoteOptionMapper.findList(map);
		return new PageInfo<CmsVoteOption>(list);
	}

	@Override
	public void insertOpt(CmsVoteOption record) {
		this.cmsVoteOptionMapper.insert(record);

	}

	@Override
	public void updateOpt(CmsVoteOption record) {
		this.cmsVoteOptionMapper.updateByPrimaryKeySelective(record);

	}

	@Override
	public void deleteOpt(Integer id) {
		this.cmsVoteOptionMapper.deleteByPrimaryKey(id);

	}

	@Override
	public void commitCheck(Integer voteId, String optionIds) {
		CmsVote vote = this.cmsVoteMapper.selectByPrimaryKey(voteId);
		if (vote != null && optionIds != null && !optionIds.equals("")) {
			String[] ids = optionIds.split(",");
			if (vote.getCheckType().equals("0")) {
				if (ids.length > 0) {
					this.addTimes(Integer.valueOf(ids[0]));
				}
			} else {
				for (String id : ids) {
					this.addTimes(Integer.valueOf(id));
				}
			}

		}
	}

	private void addTimes(Integer id) {
		CmsVoteOption o = this.cmsVoteOptionMapper.selectByPrimaryKey(id);
		o.setClickTimes(o.getClickTimes()+1);
		this.cmsVoteOptionMapper.updateByPrimaryKey(o);
	}

}
