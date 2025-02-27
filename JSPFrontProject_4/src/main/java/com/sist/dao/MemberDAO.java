package com.sist.dao;
import java.sql.*;
import java.util.*;
public class MemberDAO {
	private Connection conn;
	private PreparedStatement ps;
	private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	public MemberDAO()
	{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	public void getConnection()
	{
		try {
			conn.DriverManager.getConnection(URL,"hr","happy");
		} catch (Exception ex) {
			// TODO: handle exception
		}
	}
	public void disConnection()
	{
		try {
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		} catch (Exception ex) {
			// TODO: handle exception
		}
	}
	public static MemberDAO newInstance()
	{
		if(dao==null)
			dao=new MemberDAO();
		return dao;
	}
	public List<ZipcodeVO> postfind(String dong)
	{
		List<ZipcodeVO> list=new ArrayList<ZipcodeVO>();
		try {
			getConnection();
			String sql="SELECT zipcode,sido,gugun,dong,NVL(bunji,' ') "
					+ "FROM zipcode "
					+ "WHERE dong LIKE '%'||?||'%'";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dong);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				ZipcodeVO vo=new ZipcodeVO();
				vo.setZipcode(rs.getString(0));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		finally
		{
			disConnection();
		}
		return list;
	}
	public int postfindCount(String dong)
	{
		int count=0;
		try {
			getConnection();
			String sql="SELECT COUNT(*) "
					+ "FROM zipcode "
					+ "WHERE dong LIKE '%'||?||'%'";
					  ps=conn.prepareStatement(sql);
					  ps.setString(1, dong);
					  ResultSet rs=ps.executeQuery();
					  
							  
							  
		} catch (Exception ex) {
ex.printStackTrace();
		}finally
		{
			disConnection();
		}
	}
	
}
