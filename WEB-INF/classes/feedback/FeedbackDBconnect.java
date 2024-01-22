package feedback;

import java.sql.Connection;
import java.sql.DriverManager;

public class FeedbackDBconnect {

	private static String url="jdbc:mysql://localhost:3306/GlobleMusicHub";
	private static String userName="root";
	private static String Password="password";
	private static  Connection con;
	
	public static Connection getConnection()
	{
		try
		{
			 Class.forName("com.mysql.jdbc.Driver");
			  con = DriverManager.getConnection(url,userName,Password);
	    	 
			
		}catch(Exception e)
		{
			System.out.println("Database connection is not success");
			
		}
		return con;
	}
	
	
	
	
	

}
