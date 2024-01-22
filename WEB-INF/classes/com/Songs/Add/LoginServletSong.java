package com.Songs.Add;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/LoginServletSong")
public class LoginServletSong extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String username = request.getParameter("userN");
		
		String password = request.getParameter("Pass");
		
		
		try {
			
			List<Songs> songDetails = SongsDBUtil.Validate(username, password);
			request.setAttribute("songDetails", songDetails);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		RequestDispatcher dis = request.getRequestDispatcher("useraccountSong.jsp");
		
		dis.forward(request, response);
		
		
	}

}
