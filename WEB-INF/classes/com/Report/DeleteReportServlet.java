package com.Report;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteReportServlet")
public class DeleteReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		boolean isTrue;
		
		isTrue = ReportDBUtil.deleteCustomer(id);
		
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("reportInsert.jsp");
			dis.forward(request, response);
		}
		else {
		
			List <Report> cusDetails = ReportDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
		
			RequestDispatcher dis = request.getRequestDispatcher("userAccount.jsp");
			dis.forward(request, response);
		}
	}

}