package com.dm.atform.model;

import java.util.Date;

public class AtTable {
	private String id;

	private String tableName;

	private String status;

	private String sortField;

	private String whereField;

	private String info;

	private Integer seq;

	private Date createDate;

	private String createUser;

	private String gridName;

	private String idField;

	private String pId;

	private String type;

	private Boolean isInsert;
	private Boolean isUpdate;
	private Boolean isDelete;
	private Boolean isDetail;
	private String set;
	
	

	public String getSet() {
			String s = "";
			if(isInsert!=null && isInsert)s+="isInsert,";
			if(isUpdate!=null && isUpdate)s+="isUpdate,";
			if(isDelete!=null && isDelete)s+="isDelete,";
			if(isDetail!=null && isDetail)s+="isDetail";
			return s;
	}

	public void setSet(String set) {
		this.set = set;
	}

	public Boolean getIsInsert() {
		if(isInsert==null)
			if(set!=null && set.contains("isInsert"))
				return true;else return false;
		return isInsert;
	}

	public void setIsInsert(Boolean isInsert) {
		this.isInsert = isInsert;
	}

	public Boolean getIsUpdate() {
		if(isUpdate==null)
			if(set!=null && set.contains("isUpdate"))
				return true;else return false;
		return isUpdate;
	}

	public void setIsUpdate(Boolean isUpdate) {
		this.isUpdate = isUpdate;
	}

	public Boolean getIsDelete() {
		if(isDelete==null)
			if(set!=null && set.contains("isDelete"))
				return true;else return false;
		return isDelete == null ? false : isDelete;
	}

	public void setIsDelete(Boolean isDelete) {
		this.isDelete = isDelete;
	}

	public Boolean getIsDetail() {
		if(isDetail==null)
			if(set!=null && set.contains("isDetail"))
				return true;else return false;
		return isDetail == null ? true : isDetail;
	}

	public void setIsDetail(Boolean isDetail) {
		this.isDetail = isDetail;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id == null ? null : id.trim();
	}

	public String getIdField() {
		return idField;
	}

	public void setIdField(String idField) {
		this.idField = idField;
	}

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName == null ? null : tableName.trim();
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status == null ? null : status.trim();
	}

	public String getSortField() {
		return sortField;
	}

	public void setSortField(String sortField) {
		this.sortField = sortField == null ? null : sortField.trim();
	}

	public String getWhereField() {
		return whereField;
	}

	public void setWhereField(String whereField) {
		this.whereField = whereField == null ? null : whereField.trim();
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info == null ? null : info.trim();
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getCreateUser() {
		return createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser == null ? null : createUser.trim();
	}

	public String getGridName() {
		return gridName;
	}

	public void setGridName(String gridName) {
		this.gridName = gridName == null ? null : gridName.trim();
	}

	public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}