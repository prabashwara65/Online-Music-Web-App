package com.Songs.Add;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	
		
		private static String Url = "jdbc:mysql://localhost:3306/GlobleMusicHub";
		private static String user="root";
		private static String pass="password";
		private static  Connection con;
		

		
		public static Connection getConnection()
		{
			try
			{
				 Class.forName("com.mysql.jdbc.Driver");
				  con = DriverManager.getConnection(Url,user,pass);
		    	 
				
			}catch(Exception e)
			{
				System.out.println("Database connection is not success");
				
			}
			return con;
		}
		
}
