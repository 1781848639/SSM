package com.domain;

import java.util.HashMap;
import java.util.Map;

public class studentMap {

	
	public Map map = new HashMap();
	
	public static studentMap add(String key,Object value) {
			studentMap map = new studentMap();
			map.map.put(key, value);
			return map;
	}
	
	public Map<String, Object> getMap(){
				return map;
	}
	
}
