package com.virtusa.dbms;
import java.sql.*;
public class loginCheck {
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	public loginCheck() throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parkinglot","root","S1u2s3$$");	
	}
	public String isPresent(String user,String pass) throws SQLException{
		stmt=con.createStatement(); 
		rs = stmt.executeQuery("select *from users where username='"+user+"' and password='"+pass+"';");
		String result=null;
		while(rs.next()) {
		return rs.getString(4);
		}
		return result;
	}
	public boolean push(String username,String password,String phno,String name) throws SQLException{
		stmt=con.createStatement();
		rs = stmt.executeQuery("select *from users where username='"+username+"' and password='"+password+"';");
		if(rs.next())return false;
		String query = "insert into users values('"+username+"','"+password+"','"+phno+"','"+name+"');";
		stmt.executeUpdate(query);
		System.out.println("PUSHED "+username+" "+password+" "+phno+" "+name);
		return true;
	}
}
