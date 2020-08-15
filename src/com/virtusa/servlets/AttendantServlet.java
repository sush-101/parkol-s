package com.virtusa.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.virtusa.dbms.AttendantsJson;
import com.virtusa.javaclasses.Attendant;

/**
 * Servlet implementation class AttendantServlet
 */
@WebServlet(asyncSupported = true, description = "Servlet getting attendants json", urlPatterns = { "/Attendant" })
public class AttendantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			AttendantsJson aj = new AttendantsJson();
			List<Attendant> list = aj.getList();
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			String json = new Gson().toJson(list);
			response.getWriter().write(json);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
