package com.Report;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ReportInsert")
public class ReportInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("id");
		String username = request.getParameter("username");
		String songname = request.getParameter("songname");
		String artisname = request.getParameter("artisname");
		String reason = request.getParameter("reason");

		
		boolean isTrue;
		
		isTrue = ReportDBUtil.insertcustomer(username, songname, artisname, reason);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("/login.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}