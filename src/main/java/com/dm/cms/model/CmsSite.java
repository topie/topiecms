package com.dm.cms.model;

import java.io.Serializable;
import java.util.Date;

import com.dm.platform.util.ConfigUtil;

public class CmsSite implements Serializable {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cms_site.id
     *
     * @mbggenerated
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cms_site.display_name
     *
     * @mbggenerated
     */
    private String displayName;
    

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cms_site.domain
     *
     * @mbggenerated
     */
    private String domain;
    
    private String url;
    
    private String mUrl;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cms_site.template_id
     *
     * @mbggenerated
     */
    private Integer templateId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cms_site.is_html
     *
     * @mbggenerated
     */
    private Boolean isHtml;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cms_site.create_time
     *
     * @mbggenerated
     */
    private Date createTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cms_site.create_user
     *
     * @mbggenerated
     */
    private Integer createUser;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column cms_site.update_time
     *
     * @mbggenerated
     */
    private Date updateTime;
    
    private Long visitedNum;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table cms_site
     *
     * @mbggenerated
     */
    private static final long serialVersionUID = 1L;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cms_site.id
     *
     * @return the value of cms_site.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cms_site.id
     *
     * @param id the value for cms_site.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cms_site.display_name
     *
     * @return the value of cms_site.display_name
     *
     * @mbggenerated
     */
    public String getDisplayName() {
        return displayName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cms_site.display_name
     *
     * @param displayName the value for cms_site.display_name
     *
     * @mbggenerated
     */
    public void setDisplayName(String displayName) {
        this.displayName = displayName == null ? null : displayName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cms_site.domain
     *
     * @return the value of cms_site.domain
     *
     * @mbggenerated
     */
    public String getDomain() {
        return domain;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cms_site.domain
     *
     * @param domain the value for cms_site.domain
     *
     * @mbggenerated
     */
    public void setDomain(String domain) {
        this.domain = domain == null ? null : domain.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cms_site.template_id
     *
     * @return the value of cms_site.template_id
     *
     * @mbggenerated
     */
    public Integer getTemplateId() {
        return templateId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cms_site.template_id
     *
     * @param templateId the value for cms_site.template_id
     *
     * @mbggenerated
     */
    public void setTemplateId(Integer templateId) {
        this.templateId = templateId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cms_site.is_html
     *
     * @return the value of cms_site.is_html
     *
     * @mbggenerated
     */
    public Boolean getIsHtml() {
        return isHtml;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cms_site.is_html
     *
     * @param isHtml the value for cms_site.is_html
     *
     * @mbggenerated
     */
    public void setIsHtml(Boolean isHtml) {
        this.isHtml = isHtml;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cms_site.create_time
     *
     * @return the value of cms_site.create_time
     *
     * @mbggenerated
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cms_site.create_time
     *
     * @param createTime the value for cms_site.create_time
     *
     * @mbggenerated
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cms_site.create_user
     *
     * @return the value of cms_site.create_user
     *
     * @mbggenerated
     */
    public Integer getCreateUser() {
        return createUser;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cms_site.create_user
     *
     * @param createUser the value for cms_site.create_user
     *
     * @mbggenerated
     */
    public void setCreateUser(Integer createUser) {
        this.createUser = createUser;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column cms_site.update_time
     *
     * @return the value of cms_site.update_time
     *
     * @mbggenerated
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column cms_site.update_time
     *
     * @param updateTime the value for cms_site.update_time
     *
     * @mbggenerated
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    @Override public String toString() {
        return "displayName:"+this.displayName+";domain:"+this.getDomain()+";isHtml:"+this.isHtml;
    }

	public String getUrl() {
		if(isHtml!=null && isHtml)
		{
			return url;
		}
		else
		{
			String projectName = ConfigUtil.getConfigContent("cms","projectName");
			return "/"+projectName+"/portal/"+domain+"/index.htm";
		}
	}
	 public String getmUrl() {
		 if(isHtml!=null && isHtml)
			{
			 String htmlPCFolder = ConfigUtil.getConfigContent("cms", "htmlDir");
			 String htmlMobileFolder = ConfigUtil.getConfigContent("cms", "htmlMobileDir");
			 return url.replace(htmlPCFolder, htmlPCFolder+htmlMobileFolder);
			}
			else
			{
				String projectName = ConfigUtil.getConfigContent("cms","projectName");
				return "/"+projectName+"/portal/"+domain+"/index.htm";
			}
	    }

	public void setUrl(String url) {
		this.url = url;
	}

	public Long getVisitedNum() {
		return visitedNum;
	}

	public void setVisitedNum(Long visitedNum) {
		this.visitedNum = visitedNum;
	}

	public void setmUrl(String mUrl) {
		this.mUrl = mUrl;
	}
    
}
