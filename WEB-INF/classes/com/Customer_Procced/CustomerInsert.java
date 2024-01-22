package com.Customer_Procced;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		
		boolean isTrue;
		
		isTrue = Cus_ProceedDBUtil.insertcustomer(name, email, phone, username, password);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("/loginCustomer.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}