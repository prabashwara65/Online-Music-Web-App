package feedback;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deletefeedbackservlet")
public class deletefeedbackservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
		String id = request.getParameter("id");

       
        boolean isSuccess = feedbackdbutil.deleteCustomer(id);

       
        if (isSuccess) {
           
            response.sendRedirect("index.jsp");
        } else {
           
            response.sendRedirect("unsucess.jsp");
        }
	
	
	}

	
	}

