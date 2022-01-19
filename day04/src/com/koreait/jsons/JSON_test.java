package com.koreait.jsons;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class JSON_test {
	public static void main(String[] args) {
		
		/*JSONObject json = new JSONObject();
		json.put("name", "doCode");
		String jstr = json.toJSONString(); // JSON 데이터를 문자열로 바꾸기
		System.out.println(jstr);*/
/*		String jstr = "{\"name\":\"doCode\"}";
		JSONParser parser = new JSONParser();
		try {
			// parser는 Object 타입이므로 JSONObject로 다운캐스팅
			// 파싱후 json 으로 바뀐다.
			// 후에 json에서 하나씩 꺼내올 수 있다.
			JSONObject json = (JSONObject)parser.parse(jstr);// 문자열을 JSON 타입으로 바꾼다.
			// json에는 Object도 set이 가능하다.
			String name = (String)json.get("name");//Key값 넘겨주면서 Value 받기
			System.out.println(name);
		} catch (ParseException e) {
			System.out.println("JSON 형태가 아닙니다.");
		}*/
		
		//3. 중첩된 JSON
		JSONObject mytech = new JSONObject();
		mytech.put("first", "java");
		mytech.put("second", "javascript");
		mytech.put("third", "spring");
		
		JSONObject mytech2 = new JSONObject();
		mytech2.put("first", "html");
		mytech2.put("second", "android");
		mytech2.put("third", "css");
		
		JSONObject docode = new JSONObject();
		docode.put("mytech", mytech);
		docode.put("mytech2", mytech2);
	/*	{
			"mytech":
				{
					"fisrt":"java",
					"second":"javascript",
					"third":"spring"
				}
			"mytech2":
			
				{
					"fisrt":"html",
					"second":"android",
					"third":"css"
				}
		}*/
		JSONObject myalltech = (JSONObject)docode.get("mytech");
		System.out.println((String)myalltech.get("first"));
		
		
	}
}
