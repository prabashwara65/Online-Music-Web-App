package feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Updatefeedbackservlet
 */
@WebServlet("/Updatefeedbackservlet")
public class Updatefeedbackservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
	        String id = request.getParameter("id");
	        String name = request.getParameter("name");
	        String email = request.getParameter("email");
	        String message = request.getParameter("message");

	        boolean isTrue = feedbackdbutil.updatefeedback(id, name, email, message);
	        if (isTrue) {
	          
	            List<feedback> cusdetails = feedbackdbutil.getCustomerDetails(id);
	            request.setAttribute("cusdetail", cusdetails);

	            
	            RequestDispatcher dis = request.getRequestDispatcher("NewFile.jsp");
	            dis.forward(request, response);
	        } else {
	           
	         
	            response.sendRedirect("unsucess.jsp");
	        }
	    }
	}

	

   
