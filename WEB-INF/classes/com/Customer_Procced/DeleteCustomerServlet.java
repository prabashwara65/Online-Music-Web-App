package com.Customer_Procced;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteCustomerServlet")
public class DeleteCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("cusid");
		
		boolean isTrue;
		
		isTrue = Cus_ProceedDBUtil.deleteCustomer(id);
		
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("Home_Index.jsp");
			dis.forward(request, response);
		}
		else {
		
			List <Customer> cusDetails = Cus_ProceedDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
		
			RequestDispatcher dis = request.getRequestDispatcher("userAccountCustomer.jsp");
			dis.forward(request, response);
		}
	}

}