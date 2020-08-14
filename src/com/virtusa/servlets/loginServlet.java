package com.virtusa.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.virtusa.dbms.loginCheck;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet(name = "loginServlet", description = "login Servlet", urlPatterns = { "/login" })

public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.getWriter().print("From forms");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = (String)request.getParameter("username");
		String password = (String)request.getParameter("pass");
		String req = request.getParameter("query");
		String phno = null,name=null;
		if(req.equals("Register")) {
			phno = (String)request.getParameter("phno");
			name = (String)request.getParameter("name");
		}
		String isPresent = null;
		loginCheck obj = null;
		try {
			obj = new loginCheck();
		} catch (SQLException | ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		try {
			isPresent = obj.isPresent(username,password);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		System.out.println("present "+isPresent);
		if(isPresent!=null) {
			if(!req.equals("Register")){
			request.setAttribute("state", "login");
			request.setAttribute("name", isPresent);
			if(username.equals("admin@gmail.com")) {
				RequestDispatcher rd = request.getRequestDispatcher("index2.jsp");
				rd.forward(request, response);
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher("index1.jsp");
				rd.forward(request, response);
			}
			}
		}
		
		else if(req.equals("Register")) {
			try {
				boolean check = obj.push(username,password,phno,name);
				if(!check){
					request.setAttribute("state", "duplicate");
					RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
					rd.forward(request, response);
				}
				request.setAttribute("state", "register");
				request.setAttribute("name", name);
				RequestDispatcher rd = request.getRequestDispatcher("index1.jsp");
				rd.forward(request, response);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		else {
			request.setAttribute("state", "failed");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	}

}

