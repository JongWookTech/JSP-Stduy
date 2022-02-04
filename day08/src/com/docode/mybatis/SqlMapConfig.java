package com.docode.mybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapConfig {
	private static SqlSessionFactory factory;
	
	// 클래스 초기화 블럭(클래스가 처음 로딩될 때 딱 한번만 수행)
	static {
		//경로 입력
		String resource ="com/docode/mybatis/config.xml";
			// resource에 적힌 경로를 해석한다.
		try {
			Reader reader = Resources.getResourceAsReader(resource);
			// 경로를 해석한 reader를 빌드한다.
			new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static SqlSessionFactory getFactory() { 
		return factory;
	}
}