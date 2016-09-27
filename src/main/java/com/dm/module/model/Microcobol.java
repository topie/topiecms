package com.dm.module.model;

import java.util.Date;

public class Microcobol {
    private Integer id;

    private String name;

    private String logo;

    private String desc;

    private String remark;

    private Boolean isHidden;

    private Date createTime;

    private Date openTime;

    private Integer seq;

    private String link;

    private String openOrg;

    private String openPlant;

    private String weibanOrg;

    private String createUser;

    private String type;

    private Integer siteId;

    private String qrCode;

    private Integer clickCounts;

    private String appUrl;

    private String appQrCode;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Override
	public String toString() {
		return "Microcobol [id=" + id + ", name=" + name + ", logo=" + logo
				+ ", desc=" + desc + ", remark=" + remark + ", isHidden="
				+ isHidden + ", createTime=" + createTime + ", openTime="
				+ openTime + ", seq=" + seq + ", link=" + link + ", openOrg="
				+ openOrg + ", openPlant=" + openPlant + ", weibanOrg="
				+ weibanOrg + ", createUser=" + createUser + ", type=" + type
				+ ", siteId=" + siteId + ", qrCode=" + qrCode
				+ ", clickCounts=" + clickCounts + ", appUrl=" + appUrl
				+ ", appQrCode=" + appQrCode + "]";
	}

	public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo == null ? null : logo.trim();
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc == null ? null : desc.trim();
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Boolean getIsHidden() {
        return isHidden;
    }

    public void setIsHidden(Boolean isHidden) {
        this.isHidden = isHidden;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getOpenTime() {
        return openTime;
    }

    public void setOpenTime(Date openTime) {
        this.openTime = openTime;
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link == null ? null : link.trim();
    }

    public String getOpenOrg() {
        return openOrg;
    }

    public void setOpenOrg(String openOrg) {
        this.openOrg = openOrg == null ? null : openOrg.trim();
    }

    public String getOpenPlant() {
        return openPlant;
    }

    public void setOpenPlant(String openPlant) {
        this.openPlant = openPlant == null ? null : openPlant.trim();
    }

    public String getWeibanOrg() {
        return weibanOrg;
    }

    public void setWeibanOrg(String weibanOrg) {
        this.weibanOrg = weibanOrg == null ? null : weibanOrg.trim();
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser == null ? null : createUser.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Integer getSiteId() {
        return siteId;
    }

    public void setSiteId(Integer siteId) {
        this.siteId = siteId;
    }

    public String getQrCode() {
        return qrCode;
    }

    public void setQrCode(String qrCode) {
        this.qrCode = qrCode == null ? null : qrCode.trim();
    }

    public Integer getClickCounts() {
		return clickCounts;
	}

	public void setClickCounts(Integer clickCounts) {
		this.clickCounts = clickCounts;
	}

	public String getAppUrl() {
        return appUrl;
    }

    public void setAppUrl(String appUrl) {
        this.appUrl = appUrl == null ? null : appUrl.trim();
    }

    public String getAppQrCode() {
        return appQrCode;
    }

    public void setAppQrCode(String appQrCode) {
        this.appQrCode = appQrCode == null ? null : appQrCode.trim();
    }
}