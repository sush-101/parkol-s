package com.virtusa.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.virtusa.dbms.AttendantsJson;

/**
 * Servlet implementation class RemoveAttendant
 */
@WebServlet(asyncSupported = true, description = "Removes attendant servlet", urlPatterns = { "/rematten" })
public class RemoveAttendant extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = (String)request.getParameter("email");
		try {
			AttendantsJson aj = new AttendantsJson();
			aj.pop(email);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
