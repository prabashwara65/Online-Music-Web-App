package com.Songs.Add;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateSongServlet")
public class UpdateSongServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String songid = request.getParameter("songid");
		String songtitle = request.getParameter("songtitle");
		String artist = request.getParameter("artist");
		String email = request.getParameter("email");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		
		boolean isTrue;
		
		isTrue = SongsDBUtil.updateuser(songid, songtitle, artist, email, username, password);
		
		if(isTrue == true) {
			
			List <Songs> songDetails = SongsDBUtil.getSongDetails(songid);
			request.setAttribute("songDetails", songDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccountSong.jsp");
			dis.forward(request, response);
		}
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("Unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
