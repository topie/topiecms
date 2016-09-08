package com.dm.cms.model;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.dm.platform.util.ConfigUtil;

public class CmsContent implements Serializable {
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column cms_content.id
	 * 
	 * @mbggenerated
	 */
	private Integer id;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column cms_content.title
	 * 
	 * @mbggenerated
	 */
	private String title;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column cms_content.title_image_url
	 * 
	 * @mbggenerated
	 */
	private String titleImageUrl;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column cms_content.title_image_illustrate
	 * 
	 * @mbggenerated
	 */
	private String titleImageIllustrate;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column cms_content.brief
	 * 
	 * @mbggenerated
	 */
	private String brief;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column cms_content.content_type
	 * 
	 * @mbggenerated
	 */
	private Integer contentType;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column cms_content.author
	 * 
	 * @mbggenerated
	 */
	private String author;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column cms_content.publish_date
	 * 
	 * @mbggenerated
	 */
	private Date publishDate;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column cms_content.channel_id
	 * 
	 * @mbggenerated
	 */
	private Integer channelId;
	
	private String titleStyle;
	
	private String keywords;
	
	private Boolean isComment;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column cms_content.template_id
	 * 
	 * @mbggenerated
	 */
	private Integer templateId;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column cms_content.is_html
	 * 
	 * @mbggenerated
	 */
	private Boolean isHtml;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column cms_content.create_time
	 * 
	 * @mbggenerated
	 */
	private Date createTime;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column cms_content.create_user
	 * 
	 * @mbggenerated
	 */
	private Integer createUser;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column cms_content.update_time
	 * 
	 * @mbggenerated
	 */
	private Date updateTime;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column cms_content.status
	 * 
	 * @mbggenerated
	 */
	private Short status;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database column cms_content.content_text
	 * 
	 * @mbggenerated
	 */
	private String contentText;
	
	private String mUrl;

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to
	 * the database table cms_content
	 * 
	 * @mbggenerated
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column cms_content.id
	 * 
	 * @return the value of cms_content.id
	 * @mbggenerated
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column cms_content.id
	 * 
	 * @param id
	 *            the value for cms_content.id
	 * @mbggenerated
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column cms_content.title
	 * 
	 * @return the value of cms_content.title
	 * @mbggenerated
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column cms_content.title
	 * 
	 * @param title
	 *            the value for cms_content.title
	 * @mbggenerated
	 */
	public void setTitle(String title) {
		this.title = title == null ? null : title.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column cms_content.title_image_url
	 * 
	 * @return the value of cms_content.title_image_url
	 * @mbggenerated
	 */
	public String getTitleImageUrl() {
		return titleImageUrl;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column cms_content.title_image_url
	 * 
	 * @param titleImageUrl
	 *            the value for cms_content.title_image_url
	 * @mbggenerated
	 */
	public void setTitleImageUrl(String titleImageUrl) {
		this.titleImageUrl = titleImageUrl == null ? null : titleImageUrl
				.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column cms_content.title_image_illustrate
	 * 
	 * @return the value of cms_content.title_image_illustrate
	 * @mbggenerated
	 */
	public String getTitleImageIllustrate() {
		return titleImageIllustrate;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column cms_content.title_image_illustrate
	 * 
	 * @param titleImageIllustrate
	 *            the value for cms_content.title_image_illustrate
	 * @mbggenerated
	 */
	public void setTitleImageIllustrate(String titleImageIllustrate) {
		this.titleImageIllustrate = titleImageIllustrate == null ? null
				: titleImageIllustrate.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column cms_content.brief
	 * 
	 * @return the value of cms_content.brief
	 * @mbggenerated
	 */
	public String getBrief() {
		return brief;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column cms_content.brief
	 * 
	 * @param brief
	 *            the value for cms_content.brief
	 * @mbggenerated
	 */
	public void setBrief(String brief) {
		this.brief = brief == null ? null : brief.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column cms_content.content_type
	 * 
	 * @return the value of cms_content.content_type
	 * @mbggenerated
	 */
	public Integer getContentType() {
		return contentType;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column cms_content.content_type
	 * 
	 * @param contentType
	 *            the value for cms_content.content_type
	 * @mbggenerated
	 */
	public void setContentType(Integer contentType) {
		this.contentType = contentType;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column cms_content.author
	 * 
	 * @return the value of cms_content.author
	 * @mbggenerated
	 */
	public String getAuthor() {
		return author;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column cms_content.author
	 * 
	 * @param author
	 *            the value for cms_content.author
	 * @mbggenerated
	 */
	public void setAuthor(String author) {
		this.author = author == null ? null : author.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column cms_content.publish_date
	 * 
	 * @return the value of cms_content.publish_date
	 * @mbggenerated
	 */
	public Date getPublishDate() {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateFor = format.format(publishDate);
		Date date = null;
		try {
		 date = format.parse(dateFor);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return date;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column cms_content.publish_date
	 * 
	 * @param publishDate
	 *            the value for cms_content.publish_date
	 * @mbggenerated
	 */
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column cms_content.channel_id
	 * 
	 * @return the value of cms_content.channel_id
	 * @mbggenerated
	 */
	public Integer getChannelId() {
		return channelId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column cms_content.channel_id
	 * 
	 * @param channelId
	 *            the value for cms_content.channel_id
	 * @mbggenerated
	 */
	public void setChannelId(Integer channelId) {
		this.channelId = channelId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column cms_content.template_id
	 * 
	 * @return the value of cms_content.template_id
	 * @mbggenerated
	 */
	public Integer getTemplateId() {
		return templateId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column cms_content.template_id
	 * 
	 * @param templateId
	 *            the value for cms_content.template_id
	 * @mbggenerated
	 */
	public void setTemplateId(Integer templateId) {
		this.templateId = templateId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column cms_content.is_html
	 * 
	 * @return the value of cms_content.is_html
	 * @mbggenerated
	 */
	public Boolean getIsHtml() {
		return isHtml;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column cms_content.is_html
	 * 
	 * @param isHtml
	 *            the value for cms_content.is_html
	 * @mbggenerated
	 */
	public void setIsHtml(Boolean isHtml) {
		this.isHtml = isHtml;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column cms_content.create_time
	 * 
	 * @return the value of cms_content.create_time
	 * @mbggenerated
	 */
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column cms_content.create_time
	 * 
	 * @param createTime
	 *            the value for cms_content.create_time
	 * @mbggenerated
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column cms_content.create_user
	 * 
	 * @return the value of cms_content.create_user
	 * @mbggenerated
	 */
	public Integer getCreateUser() {
		return createUser;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column cms_content.create_user
	 * 
	 * @param createUser
	 *            the value for cms_content.create_user
	 * @mbggenerated
	 */
	public void setCreateUser(Integer createUser) {
		this.createUser = createUser;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column cms_content.update_time
	 * 
	 * @return the value of cms_content.update_time
	 * @mbggenerated
	 */
	public Date getUpdateTime() {
		return updateTime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column cms_content.update_time
	 * 
	 * @param updateTime
	 *            the value for cms_content.update_time
	 * @mbggenerated
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column cms_content.status
	 * 
	 * @return the value of cms_content.status
	 * @mbggenerated
	 */
	public Short getStatus() {
		return status;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column cms_content.status
	 * 
	 * @param status
	 *            the value for cms_content.status
	 * @mbggenerated
	 */
	public void setStatus(Short status) {
		this.status = status;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the
	 * value of the database column cms_content.content_text
	 * 
	 * @return the value of cms_content.content_text
	 * @mbggenerated
	 */
	public String getContentText() {
		return contentText;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the
	 * value of the database column cms_content.content_text
	 * 
	 * @param contentText
	 *            the value for cms_content.content_text
	 * @mbggenerated
	 */
	public void setContentText(String contentText) {
		this.contentText = contentText == null ? null : contentText.trim();
	}

	private String channelEnName;
	private String siteDomain;

	public String getChannelEnName() {
		return channelEnName;
	}

	public void setChannelEnName(String channelEnName) {
		this.channelEnName = channelEnName;
	}

	public String getSiteDomain() {
		return siteDomain;
	}

	public void setSiteDomain(String siteDomain) {
		this.siteDomain = siteDomain;
	}

	private String attachmentIds;

	public String getAttachmentIds() {
		return attachmentIds;
	}

	public void setAttachmentIds(String attachmentIds) {
		this.attachmentIds = attachmentIds;
	}

	private String url;
	private String origin;

	public String getUrl() {
		if(contentType!=null && contentType!=2)
		{
			return url;
		}
		if ((isHtml == null || !isHtml)) {
			String projectName = ConfigUtil.getConfigContent("cms", "projectName");
			return "/"+projectName+"/portal/content/" + id + ".htm";
		}
		return url;
	}
	public String getmUrl() {
		if (isHtml == null || !isHtml) {
			String projectName = ConfigUtil.getConfigContent("cms", "projectName");
			return "/"+projectName+"/portal/content/" + id + ".htm";
		}
		String htmlPCFolder = ConfigUtil.getConfigContent("cms", "htmlDir");
		String htmlMobileFolder = ConfigUtil.getConfigContent("cms", "htmlMobileDir");
		return url.replace(htmlPCFolder, htmlPCFolder+htmlMobileFolder);
    }

	public void setUrl(String url) {
		this.url = url;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}
	private Integer seq;

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public void setmUrl(String mUrl) {
		this.mUrl = mUrl;
	}

	public String getTitleStyle() {
		return titleStyle;
	}

	public void setTitleStyle(String titleStyle) {
		this.titleStyle = titleStyle;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public Boolean getIsComment() {
        return isComment;
    }

    public void setIsComment(Boolean isComment) {
        this.isComment = isComment;
    }
	
}
