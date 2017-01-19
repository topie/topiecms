package com.dm.atform.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dm.atform.model.AtField;
import com.dm.atform.model.AtTable;
import com.dm.atform.service.AtFieldService;
import com.dm.atform.service.AtTableService;
import com.dm.atform.service.MongoService;
import com.dm.platform.util.PageConvertUtil;
import com.dm.platform.util.ResponseUtil;
import com.dm.platform.util.SearchConditionUtil;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("show")
public class TableShowController {

	@Autowired
	private AtFieldService colService;

	@Autowired
	private AtTableService table;

	@Autowired
	private MongoService mongo;

	@RequestMapping("/page")
	public String page(Model model) {
		return "/atform/grid/page";
	}

	@RequestMapping("list")
	@ResponseBody
	public Object list(
			HttpServletRequest request,
			@RequestParam(value = "tableId", required = false) String tableId,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") Integer pageNum,
			@RequestParam(value = "pageSize", required = false, defaultValue = "10") Integer pageSize,
			@RequestParam(value = "sort", required = false, defaultValue = "") String sort) {
		AtTable atTable = this.table.findOne(tableId);
		if (atTable == null || atTable.getTableName() == null) {
			return PageConvertUtil.emptyGrid();
		}
		Map searchMap = SearchConditionUtil.packageSearchCondion(request);
		PageInfo<AtField> page = this.mongo.queryMulti(atTable, pageNum,
				pageSize, searchMap, sort);
		return PageConvertUtil.grid(page);
	}

	@RequestMapping("beforlist")
	@ResponseBody
	public Object beforlist(HttpServletRequest request,
			@RequestParam(value = "tableId", required = false) String tableId) {
		if (tableId == null)
			return ResponseUtil.error("tableId参数必须的!");
		AtTable atTable = this.table.findOne(tableId);
		if (atTable == null)
			return ResponseUtil.error("tableId参数错误!");
		Map searchMap = new HashMap();
		AtField f = new AtField();
		f.setTableId(tableId);
		searchMap.put("model", f);
		Map m = this.getColConf(searchMap, atTable);
		m.put("info", atTable);
		return m;
	}

	private Map getColConf(Map searchMap, AtTable atTable) {
		Map m = ResponseUtil.success();
		List<AtField> list = this.colService.findAll(searchMap);
		List<Map> gridItem = new ArrayList();
		List<Map> formItem = new ArrayList();
		List<Map> searchItem = new ArrayList();
		for (AtField a : list) {
			if (a.getGridShow()) {
				gridItem.add(a.toGridItem());
			}
			if (a.getDetailShow()) {
				formItem.add(a.toFormItem());
			}
			if (a.getaSearch()) {
				searchItem.add(a.toSearchItem());
			}
		}
		m.put("id", atTable.getIdField());
		if (atTable.getIdField() == null)
			m.put("id", "_id");
		if (list.size() == 0) {// 如果没有配置 查询集合的所有字段  //初始化配置 
			// return ResponseUtil.error("未配置!");
			gridItem = formItem = this.mongo.findOne(atTable);
			if (gridItem.size() != 0) {
				initCol(gridItem,atTable.getId());//初始化
				return getColConf(searchMap, atTable);//重新读取
			}
		}
		m.put("gridItem", gridItem);
		m.put("formItem", formItem);
		m.put("searchItem", searchItem);
		return m;
	}

	private void initCol(List<Map> gridItem,String tableId) {
		for(Map co:gridItem){
			String col = (String)co.get("id");
			AtField atField = new AtField();
			atField.setaType("text");
			atField.setaField(col);
			atField.setaTitle(col);
			atField.setTableId(tableId);
			atField.setDetailShow(true);
			atField.setGridShow(true);
			if(col.equalsIgnoreCase("id")||col.equalsIgnoreCase("objectid")){
				atField.setGridShow(false);
			}
			this.colService.saveOrUpdate(atField);
		}
	}

	@RequestMapping("load")
	@ResponseBody
	public Object load(String tableId, String id) {
		if (tableId == null)
			return ResponseUtil.error("tableId参数必须的!");
		AtTable atTable = this.table.findOne(tableId);
		if (atTable == null)
			return ResponseUtil.error("tableId参数错误!");
		return this.mongo.findOne(atTable, id);
	}

	@RequestMapping("insertOrUpdate")
	@ResponseBody
	public Object addOrUpdate(HttpServletRequest request, String tableId) {
		if (tableId == null)
			return ResponseUtil.error("tableId参数必须的!");
		AtTable atTable = this.table.findOne(tableId);
		if (atTable == null)
			return ResponseUtil.error("tableId参数错误!");
		Map record = SearchConditionUtil.packageSearchCondion(request);
		record.remove("tableId");
		this.mongo.saveOrUpdate(atTable, record);
		return ResponseUtil.success();
	}

	@RequestMapping("delete")
	@ResponseBody
	public Object delte(String tableId, String id) {
		if (tableId == null)
			return ResponseUtil.error("tableId参数必须的!");
		AtTable atTable = this.table.findOne(tableId);
		if (atTable == null)
			return ResponseUtil.error("tableId参数错误!");
		this.mongo.delete(atTable, id);
		return ResponseUtil.success();
	}
}
