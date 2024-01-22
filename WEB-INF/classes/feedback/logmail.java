package feedback;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/logmail")
public class logmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
   
        // TODO Auto-generated constructor stub
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email=request.getParameter("email");
		
		
		
		try{
		List<feedback> cusdetail=feedbackdbutil.validate(email);
		request.setAttribute("cusdetail",cusdetail );
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis=request.getRequestDispatcher("NewFile.jsp");
		dis.forward(request, response);
		
	}

	
		// TODO Auto-generated method stub
		
	}


