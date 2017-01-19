package com.dm.platform.util;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;

/**
 * Created by cgj on 2015/11/26.
 */
public class SqlParam<T> {
    private final String MODEL = "model";

    public void order(String sort, Map argMap) {
        if (!StringUtils.isEmpty(sort)) {
            if (sort.indexOf("_desc") != -1) {
                argMap.put("sort",
                    CamelCaseUtils.toUnderlineName(sort.replace("_desc", "")).toLowerCase()
                        + " desc");
            } else if (sort.indexOf("_asc") != -1) {
                argMap.put("sort",
                    CamelCaseUtils.toUnderlineName(sort.replace("_asc", "")).toLowerCase()
                        + " asc");
            }
        }
    }

    public Map autoParam(T model, String sort) {
        Map argMap = new HashMap();
        argMap.put(MODEL, model);
        order(sort, argMap);
        return argMap;
    }

	public Map autoParam(T model, String sort, Integer pageNum,
			Integer pageSize) {
		Map argMap = autoParam(model, sort);
		argMap.put("start", pageNum);
		argMap.put("limit", pageSize);
		return argMap;
	}

}
