package feedback;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/feedbackservlet")
public class feedbackservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String name= request.getParameter("name");
	String email= request.getParameter("email");
	String message= request.getParameter("message");
	
	boolean isTrue;
	
	if (!isEmailAlreadyUsed(email)) {
		
		
	
       isTrue=feedbackdbutil.insertcustomer(name, email, message);
       if(isTrue==true){
    	   RequestDispatcher dis = request.getRequestDispatcher("NewFile.jsp");
    	   dis.forward(request, response);
       }else{
    	   
    	   RequestDispatcher dis2 = request.getRequestDispatcher("unsucess.jsp");
    	   dis2.forward(request, response);  
       }
    }
	else {
       
        response.getWriter().write(" Sorry.EmailUsed.please Try again");
	}
}
	
	private boolean isEmailAlreadyUsed(String email) {
	    List<feedback> existingFeedback = feedbackdbutil.validate(email);
	    return !existingFeedback.isEmpty();
	}}
	
      
   
      
	
	
	

	


