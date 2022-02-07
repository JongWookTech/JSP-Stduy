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
		//지어진 공장에서 생수병 받아오기
		//openSession(true) : 오토커밋
		sqlsession = factory.openSession(true);
	}
	
	public boolean checkId(String userid) {
		//User 네임스페이스 안의 checkId 쿼리문을 userid 넘겨주면서 사용
		int result = 0;
		result = sqlsession.selectOne("User.checkId", userid);
		return result == 0;
	}
	public void join(UserDTO user) {
		sqlsession.insert("User.join",user);
		
	}
	public boolean login(String userid,String userpw) {
		HashMap<String, String> datas = new HashMap<>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		
		return 1==(Integer)sqlsession.selectOne("User.login",datas);
		

	}
}












