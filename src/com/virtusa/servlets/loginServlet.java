package com.virtusa.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		String remme = (String)request.getParameter("remme");
		String req = request.getParameter("query");
		String phno = null,name=null;
		HttpSession session = request.getSession();
		if(req.equals("Register")) {
			phno = (String)request.getParameter("phno");
			name = (String)request.getParameter("name");
		}
		String isPresent = "";
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
		if(!isPresent.equals("")) {
			if(!req.equals("Register")){
			request.setAttribute("user", isPresent);
				if(username.equals("admin@gmail.com")) {
					RequestDispatcher rd = request.getRequestDispatcher("index2.jsp");
					if(remme!=null)session.setAttribute("user",isPresent);
					else session.setAttribute("user", "");
					rd.forward(request, response);
				}
				else {
					RequestDispatcher rd = request.getRequestDispatcher("index1.jsp");
					if(remme!=null)session.setAttribute("user",isPresent);
					else session.setAttribute("user", "");
					rd.forward(request, response);
				}
			}
			else {
				request.setAttribute("state", "duplicate");
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}
		}
		
		else if(req.equals("Register")) {
			try {
				obj.push(username,password,phno,name);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			request.setAttribute("state", "Registration complete.Please login");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		else {
			request.setAttribute("state", "failed");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	}

}

