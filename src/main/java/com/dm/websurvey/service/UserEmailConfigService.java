package com.dm.websurvey.service;

import com.dm.websurvey.model.UserEmailConfig;

public interface UserEmailConfigService {
	
	public void addOrUpdate(String userId,String leadIds,String orgIds);

	public UserEmailConfig findByUserId(String userId);

}
