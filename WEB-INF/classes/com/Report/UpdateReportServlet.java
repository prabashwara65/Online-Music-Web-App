package com.Report;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateReportServlet")
public class UpdateReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String username = request.getParameter("username");
		String songname = request.getParameter("songname");
		String artisname = request.getParameter("artisname");
		String reason = request.getParameter("reason");

		
		
		boolean isTrue;
		
		isTrue = ReportDBUtil.updateuser(id, username, songname, artisname, reason);
		
		if(isTrue == true) {
			
			List<Report> cusDetails = ReportDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("userAccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("Unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
    
    

	
