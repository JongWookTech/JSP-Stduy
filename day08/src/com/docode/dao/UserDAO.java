package com.docode.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.docode.dto.UserDTO;
import com.docode.mybatis.SqlMapConfig;

public class UserDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
	
	public UserDAO() {
		//openSession(true) : 오토 커밋
		sqlsession = factory.openSession(true);
	}
	
	public boolean checkId(String userid) {
		int result = 0;
		result = sqlsession.selectOne("User.checkId", userid);
		return result == 0;
	}
	public void join(UserDTO user) {
		String userid = user.getUserid();
		String userpw = user.getUserpw();
		String username = user.getUsername();
		int userage = user.getUserage();
	}
	public boolean login(String userid,String userpw) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		sqlsession.selectOne("User.login", datas);
		return false;
	}
}












