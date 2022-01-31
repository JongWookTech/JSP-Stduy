package com.koreait.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class UserDAO {
	Connection conn;
	PreparedStatement pstm;
	ResultSet rs;
	Context context;
	DataSource datasource;
	
	
	public boolean checkId(String userid) {
		String sql = "SELECT * FROM T_USER WHERE USERID=?";
		try {
			try {
				context = new InitialContext(null);
				datasource = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
				conn = datasource.getConnection();
			} catch (NamingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			pstm = conn.prepareStatement(sql);
			pstm.setString(1,userid);
			rs = pstm.executeQuery();
			
			if(rs.next()){
				return false;
			}else {
				return true;
			}
		} catch (SQLException e) {
		}
		return false;
		
		
		
	}
	public void join(UserBean user) {
		String userid = user.getUserid();
		String userpw = user.getUserpw();
		String username = user.getUsername();
		int userage = user.getUserage();
		
		String sql = "INSERT INTO T_USER VALUES(?,?,?,?)";
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, userid);
			pstm.setString(2, userpw);
			pstm.setString(3, username);
			pstm.setInt(4, userage);
			
			pstm.executeUpdate();
		} catch (SQLException e) {
		}
		
	}
	public boolean login(String userid,String userpw) {
		String sql = "SELECT * FROM T_USER WHERE USERID=? AND USERPW=?";
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, userid);
			pstm.setString(2, userpw);
			
			rs = pstm.executeQuery();
			if(rs.next()) {
				return true;
			}
		} catch (SQLException e) {
		}
		
		
		return false;
	}
}












