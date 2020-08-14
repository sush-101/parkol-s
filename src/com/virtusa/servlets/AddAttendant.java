package com.virtusa.servlets;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.virtusa.dbms.AttendantsJson;

@WebServlet(asyncSupported = true, urlPatterns = { "/AddAttendant" })
public class AddAttendant extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = (String)request.getParameter("email");
		String name = (String)request.getParameter("name");
		String phno = (String)request.getParameter("phno");
		String pass = (String)request.getParameter("pass");
		int age = Integer.parseInt((String)request.getParameter("age"));
		try {
			AttendantsJson aj = new AttendantsJson();
			aj.push(email,name,phno,pass,age);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
}
