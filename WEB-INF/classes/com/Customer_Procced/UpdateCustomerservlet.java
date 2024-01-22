package com.Customer_Procced;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateCustomerservlet")
public class UpdateCustomerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("cusid");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		
		boolean isTrue;
		
		isTrue = Cus_ProceedDBUtil.updateuser(id, name, email, phone, username, password);
		
		if(isTrue == true) {
			
			List<Customer> cusDetails = Cus_ProceedDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("userAccountCustomer.jsp");
			dis.forward(request, response);
		}
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("Unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}