package initDivition.init;

import initDivition.util.DataSourceUtil;

import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.WriteResult;


public class init {
	public final static String ID="ID";
	public final static String FULLNAME="FULLNAME";
	public final static String NAME="NAME";
	public final static String PARENT_ID="PARENT_ID";
	public final static String TYPE="TYPE";
	public final static String CODE="CODE";
	public final static String level="level";
	public final static String OBJECTID = "OBJECTID";
	
	public static void main(String[] args) throws SQLException {
		action();
	}
	
	public static void action() throws SQLException {
		DB db = getDB();
		Connection zcptconn = DataSourceUtil.getConnection("zcptdataSource");
		Statement zcptStat = null;
		try {
			zcptStat = zcptconn.createStatement();
			//List<Map> quxianList = getQuxianList(zcptStat);
			//updateCounty(db,quxianList);//初始化区划
			updateTableCode("h_TB_BaseInfo","BaseInfo_Address","BaseInfo_ID",3,db);//更新实用人才 村CODE
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			zcptStat.close();
			
		}
		
	}
	
	
	
	private static void updateTableCode(String table, String filed,String idFiled,int level, DB db) {
		DBCollection regColl = null;
		String r = "REG";
		if(level==1){
			regColl = db.getCollection("m_ST_REG_COUNTY");
			r = "SZ_QX_CODE";
		}if(level==2){
			regColl = db.getCollection("m_ST_REG_TOWN");
			r = "SZ_XZ_CODE";
		}if(level==3){
			regColl = db.getCollection("m_ST_REG_VILLAGE");
			r = "SZ_XZC_CODE";
		}
		DBCollection tableColl = db.getCollection(table);
		int limit = 2000;
		int pagenum = 0;
		boolean flag = true;
		while(flag){
			DBCursor cursor = getrecode(pagenum,limit,filed,tableColl);
			flag = false;
			while(cursor.hasNext()){
				flag = true;
				DBObject obj = cursor.next();
				StringBuffer fullName = null;
				 fullName = obj.get(filed)==null?null:new StringBuffer(obj.get(filed).toString());
				if(fullName == null){
					continue;
				}
				String name = fullName.toString();
				DBObject rec = regColl.findOne(new BasicDBObject().append("FULLNAME",new BasicDBObject().append("$regex",".*"+fullName.toString()+".*")));
				int len = fullName.length();
				if(rec == null&&len>3){
					name = fullName.insert(fullName.length()-3,"乡").toString();
					 rec = regColl.findOne(new BasicDBObject().append("FULLNAME",new BasicDBObject().append("$regex",".*"+name+".*")));
				}
				if(rec == null&&len>4){
					name = fullName.insert(fullName.length()-4,"乡").toString();
					 rec = regColl.findOne(new BasicDBObject().append("FULLNAME",new BasicDBObject().append("$regex",".*"+name+".*")));
				}
				if(rec == null && len>2){
					name = fullName.insert(fullName.length()-2,"乡").toString();
					 rec = regColl.findOne(new BasicDBObject().append("FULLNAME",new BasicDBObject().append("$regex",".*"+name+".*")));
				}
				if(rec == null && len>4){
					name = fullName.insert(fullName.length()-4,"镇").toString();
					 rec = regColl.findOne(new BasicDBObject().append("FULLNAME",new BasicDBObject().append("$regex",".*"+name+".*")));
				}
				if(rec == null && len>3){
					name = fullName.insert(fullName.length()-3,"镇").toString();
					 rec = regColl.findOne(new BasicDBObject().append("FULLNAME",new BasicDBObject().append("$regex",".*"+name+".*")));
				}
				if(rec == null && len>2){
					name = fullName.insert(fullName.length()-2,"镇").toString();
					 rec = regColl.findOne(new BasicDBObject().append("FULLNAME",new BasicDBObject().append("$regex",".*"+name+".*")));
				}
				if(rec == null && len>5){
					name = fullName.insert(fullName.length()-5,"镇").toString();
					 rec = regColl.findOne(new BasicDBObject().append("FULLNAME",new BasicDBObject().append("$regex",".*"+name+".*")));
				}
				if(rec == null&&len>5){
					name = fullName.insert(fullName.length()-5,"乡").toString();
					 rec = regColl.findOne(new BasicDBObject().append("FULLNAME",new BasicDBObject().append("$regex",".*"+name+".*")));
				}
				if(rec==null){
					continue;
				}
				String code = (String) rec.get(CODE);
				DBObject query = new BasicDBObject();
				query.put(idFiled, obj.get(idFiled));
				obj.put(r, code);
				tableColl.update(query, obj);
				
			}
				
			pagenum++;
		}
		
		
	}

	private static DBCursor getrecode(int pagenum, int limit,String filed,
			DBCollection tableColl) {
		return tableColl.find().sort(new BasicDBObject().append(filed, 1)).skip(pagenum*2000).limit(limit);
	}

	private static void updateCounty(DB db, List<Map> quxianList) {

		DBCollection countyColl = db.getCollection("m_ST_REG_COUNTY");
		DBCollection townColl = db.getCollection("m_ST_REG_TOWN");
		DBCollection villageColl = db.getCollection("m_ST_REG_VILLAGE");
		for(Map<String,String> map: quxianList){
			String name = map.get(NAME);
			//区县
			BasicDBObject query = new BasicDBObject();
			query.append("MC", name);
			DBObject county = countyColl.findOne(query);
			if(county==null){
				continue;
			}
			String code =  map.get(CODE);
			county.put(CODE,code);
			county.put(FULLNAME, "北京市"+name);
			countyColl.update(query, county);//更新区县
			//乡镇
			BasicDBObject queryt = new BasicDBObject();
			queryt.append("SZ_QX", name);
			DBCursor xiangzhens = townColl.find(queryt);
			String codex = "001";
			while(xiangzhens.hasNext()){
				DBObject xiang = xiangzhens.next();
				DBObject que = new BasicDBObject();
				que.put(ID, xiang.get(ID));
				xiang.put("SZ_QX_CODE", code);
				xiang.put(CODE, code+codex);
				xiang.put(FULLNAME, "北京市"+name+xiang.get("MC"));
				townColl.update(que, xiang);
				//村
				BasicDBObject queryv = new BasicDBObject();
				queryv.append("SZ_QX", name);
				queryv.append("SZ_XZ", xiang.get("MC"));
				DBCursor cun = villageColl.find(queryv);
				String codec = "001";
				while(cun.hasNext()){
					DBObject c = cun.next();
					DBObject que1 = new BasicDBObject();
					que1.put(OBJECTID,c.get(OBJECTID));
					c.put("SZ_QX_CODE", code);
					c.put("SZ_XZ_CODE", code+codex);
					c.put(CODE, code+codex+codec);
					c.put(FULLNAME, "北京市"+name+xiang.get("MC")+c.get("MC"));
					WriteResult r = villageColl.update(que1, c);
					System.out.println(c.get("SZ_QX")+"--"+c.get("SZ_XZ")+"--"+c.get("MC")+"--"+r.getN());
					codec = code(codec);
				}
				codex = code(codex);
			}
			
		}
		
	}
	private static String code(String code) {
		code = "00"+(Integer.parseInt(code)+1);
		return code.substring(code.length()-3);
	}

	private static List<Map> getQuxianList(Statement zcptStat) {
		List<Map> list = new ArrayList<Map>();
		try{
		String seq = "SELECT "
				+ " `ID`,"
				+ " `FULLNAME`,"
				+ " `NAME`,"
				+ " `PARENT_ID`,"
				+ " `CODE`,"
				+ " `TYPE`,"
				+ " `level`"
				+ " FROM `t_division` WHERE"
				+ " `FULLNAME` LIKE '%北京市%' AND"
				+ " `level`= '2'  ORDER BY `FULLNAME`";
		ResultSet result = zcptStat.executeQuery(seq);
		while(result.next()){
			Map map = new HashMap();
			map.put(ID, result.getInt(ID));
			map.put(FULLNAME, result.getString(FULLNAME));
			map.put(CODE, result.getString(CODE));
			map.put(NAME, result.getString(NAME));
			map.put(TYPE, result.getString(TYPE));
			map.put(PARENT_ID, result.getString(PARENT_ID));
			map.put(level, result.getString(level));
			list.add(map);
		}
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return list;
	}

	private static DB getDB() {
		Mongo mongo;
		try {
			mongo = new Mongo("localhost", 27017);
			DB db = mongo.getDB("datamanage");
			return db;
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
