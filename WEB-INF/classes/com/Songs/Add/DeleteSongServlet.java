package com.Songs.Add;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteSongServlet")
public class DeleteSongServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String songid = request.getParameter("songid");
		
		boolean isTrue;
		
		isTrue = SongsDBUtil.deleteSong(songid);
		
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("songinsert.jsp");
			dis.forward(request, response);
		}
		else {
		
			List <Songs> songDetails = SongsDBUtil.getSongDetails(songid);
			request.setAttribute("songDetails", songDetails);
		
			RequestDispatcher dis = request.getRequestDispatcher("useraccountSong.jsp");
			dis.forward(request, response);
		}
	}

}

