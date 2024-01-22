package feedback;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class feedbackdbutil {
	
	private static Connection con=null;
	private static Statement stmt =null;
	private static ResultSet  rs=null;
	
	
	

	    public static List<feedback> validate(String email) {

	        ArrayList<feedback> cus = new ArrayList<>();

	        try {
	            con = FeedbackDBconnect.getConnection();
	            stmt = con.createStatement();

	            String sql = "SELECT * FROM feedback WHERE email = ?";
	            PreparedStatement pstmt = con.prepareStatement(sql);
	            pstmt.setString(1, email);
	            rs = pstmt.executeQuery();
 
	            if (rs.next()) {
	                int id = rs.getInt(1);
	                String name = rs.getString(2);
	                String email1 = rs.getString(3);
	                String message = rs.getString(4);
	                feedback c = new feedback(id, name, email1, message);
	                cus.add(c);
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return cus;
	    }
	

	
	
	public static boolean insertcustomer(String name,String email,String message) {
		
	
	boolean isSuccess=false;
	 
     try{
    	 con=FeedbackDBconnect.getConnection();
     	stmt =con.createStatement();
    	
    	 String sql="insert into feedback value (0,'"+name+"','"+email+"','"+message+"')";
    	 int rs=stmt.executeUpdate(sql);
    	 if(rs>0){
    		 isSuccess=true;
    	 }
    		 else{
    			 isSuccess=false;
    		 
    	 }
     }
     catch(Exception e){
    	 
     }
	return isSuccess;
	
}
	public static boolean updatefeedback(String id, String name, String email, String message) {
	    boolean isSuccess = false;
	    try {
	        con = FeedbackDBconnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "UPDATE feedback SET message = '" + message + "' WHERE id = '" + id + "'";
	        int rs = stmt.executeUpdate(sql);
	        if (rs > 0) {
	            isSuccess = true;
	        } else {
	            isSuccess = false;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return isSuccess;
	}

	
		
	public static List<feedback>getCustomerDetails(String Id)
	{
		int convertedID=Integer.parseInt(Id);
		
		ArrayList<feedback> cus=new ArrayList<>();
		try{
			
			con=FeedbackDBconnect.getConnection();
	     	stmt =con.createStatement();
	     	String sql="select * from feedback where id='"+convertedID+"'";
			rs=stmt.executeQuery(sql);
			while(rs.next())
			{
				int id =rs.getInt(1);
				String name =rs.getString(2);
	    		 String email =rs.getString(3);
				 String message=rs.getString(4); 
				 feedback c = new feedback(id,name, email, message);
				 cus.add(c);
				
			}
			
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return cus;
		
	}
	

	    public static boolean deleteCustomer(String id) {
	        boolean isSuccess = false;
	        try {
	            con = FeedbackDBconnect.getConnection();
	            stmt = con.createStatement();
	            String sql = "DELETE FROM feedback WHERE id = ?";
	            
	           
	            PreparedStatement pstmt = con.prepareStatement(sql);
	            pstmt.setInt(1, Integer.parseInt(id));
	            
	            int rowsDeleted = pstmt.executeUpdate();
	            
	          
	            isSuccess = rowsDeleted > 0;
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return isSuccess;
	    }
	}



	


