package com.virtusa.dbms;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.virtusa.javaclasses.Attendant;
public class AttendantsJson {
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	public AttendantsJson() throws SQLException, ClassNotFoundException{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parkinglot","root","S1u2s3$$");	
	}
	public void push(String email,String name,String phno,String pass,int age) throws SQLException {
		stmt = con.createStatement();
		String query = "insert into attendant(email,name,phno,pass,age) values('"+email+"','"+name+"','"+phno+"','"+pass+"','"+age+"')";
		stmt.executeUpdate(query);	
	}
	public void pop(String email) throws SQLException {
		stmt = con.createStatement();
		String query = "delete from attendant where email = '"+email+"';";
		stmt.executeUpdate(query);
	}
	public List<Attendant> getList() throws SQLException {
		List<Attendant> res = new ArrayList<Attendant>();
		stmt = con.createStatement();
		rs = stmt.executeQuery("select *from attendant");
		while(rs.next()) {
			Attendant temp = new Attendant();
			temp.setEmail(rs.getString(1));
			temp.setName(rs.getString(2));
			temp.setPhno(rs.getString(3));
			temp.setPass(rs.getString(4));
			temp.setAge(rs.getInt(5));
			res.add(temp);
		}
		return res;
	}
}
