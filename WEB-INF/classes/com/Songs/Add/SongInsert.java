package com.Songs.Add;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SongInsert")
public class SongInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String songid = request.getParameter("songid");
		String songtitle = request.getParameter("songtitle");
		String artist = request.getParameter("artist");
		String email = request.getParameter("email");
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		

		
		boolean isTrue;
		
		isTrue = SongsDBUtil.insertsong(songtitle, artist, email, username, password);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("/loginSong.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}

