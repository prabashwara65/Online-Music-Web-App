package com.Customer_Procced;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServletCustomer")
public class LoginServletCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("userN");
		
		String password = request.getParameter("Pass");
		
		
try {
			
			List <Customer> cusDetails = Cus_ProceedDBUtil.Validate(username, password);
			request.setAttribute("cusDetails", cusDetails);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("userAccountCustomer.jsp");
		
		dis.forward(request, response);
		
	}

}