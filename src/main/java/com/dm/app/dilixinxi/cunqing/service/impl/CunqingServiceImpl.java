package com.dm.app.dilixinxi.cunqing.service.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.mapreduce.GroupBy;
import org.springframework.data.mongodb.core.mapreduce.GroupByResults;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.stereotype.Service;

import com.dm.app.dilixinxi.cunqing.model.LandPushTypeCount;
import com.dm.app.dilixinxi.cunqing.service.CunqingService;
import com.dm.app.dilixinxi.jichushujuguanli.model.RegTown;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;

@Service
public class CunqingServiceImpl implements CunqingService{

	@Autowired
	private MongoTemplate mongoTemplate;
	
	public List<Map> getViliageCount(){
		List<Map> list = new ArrayList<Map>();
		
	GroupBy groupBy = GroupBy.key("SZ_QX").initialDocument("{count:0}")  
	        .reduceFunction("function(doc, prev){prev.count+=1}");  

	        GroupByResults<RegTown> r = mongoTemplate.group("m_ST_REG_TOWN", groupBy, RegTown.class); 
	        for(Iterator<RegTown> i=r.iterator();i.hasNext();){
	        //	list.add(i.next());
	        }
	        System.out.println(r); 
	        return list;
}
	public Map<String, LandPushTypeCount> findTodayCountByAreaIds(Collection<String> areaIds) throws Exception {
        Map<String, LandPushTypeCount> result = new HashMap<String, LandPushTypeCount>();

        Criteria criteria = Criteria.where("todayDate").is( new Date() ).andOperator(Criteria.where("areaId").in(areaIds));
        String initDocument = "{codeCount:0, newCount:0, oldCount:0, errorCount:0}";
        String reduceFunction = "function (doc, prev) { prev.codeCount += doc.codeCount; prev.newCount += doc.newCount; prev.oldCount += doc.oldCount; prev.errorCount += doc.errorCount; }";
        GroupBy groupBy = GroupBy.key("areaId").initialDocument(initDocument).reduceFunction(reduceFunction);

        GroupByResults<LandPushTypeCount> groupByResult = mongoTemplate.group(criteria, "LandPushTypeCount", groupBy, LandPushTypeCount.class);

        BasicDBList list = (BasicDBList) groupByResult.getRawResults().get("retval");
        for (int i = 0; i < list.size(); i ++) {
            LandPushTypeCount landPushTypeCountBean = new LandPushTypeCount();
            BasicDBObject obj = (BasicDBObject)list.get(i);
            System.out.println("片区：" + obj.get("areaId")
                            + "总数量：" + obj.get("codeCount")
                            + "新用户数量：" + obj.get("newCount")
                            + "旧用户数量：" + obj.get("oldCount")
                            + "异常数量：" + obj.get("errorCount")
            );
            landPushTypeCountBean.setCodeCount(((Double) obj.get("codeCount")).intValue());
            landPushTypeCountBean.setNewCount(((Double) obj.get("newCount")).intValue());
            landPushTypeCountBean.setOldCount(((Double) obj.get("oldCount")).intValue());
            landPushTypeCountBean.setErrorCount(((Double) obj.get("errorCount")).intValue());
            result.put((String) obj.get("areaId"), landPushTypeCountBean);
        }
        return result;
    }

// 相当于mongo语句如下
/*db.runCommand(
{
　　"group":
　　{
　　　　"ns":"LandPushTypeCount",
　　　　"key":{"areaId":true},
　　　　"initial":{codeCount:0, newCount:0, oldCount:0, errorCount:0},
　　　　"$reduce":function(doc,prev)
　　　　{
　　　　　 prev.codeCount += doc.codeCount;
          prev.newCount += doc.newCount;
          prev.oldCount += doc.oldCount;
          prev.errorCount += doc.errorCount;
　　　　},
　　　　"condition":{"todayDate":"2015-10-29", "areaId":{$in:["", "330100", "110000"]}}
　　}
}
);*/
}
