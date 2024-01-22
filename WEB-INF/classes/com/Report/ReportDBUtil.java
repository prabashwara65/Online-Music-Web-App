package com.Report;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ReportDBUtil {
	
	//newly added boolean variable
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<Report> Validate (String Username ){
		
		ArrayList<Report> customer = new ArrayList<>();
	
		
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from report where username='"+Username+"'";
			
			rs = stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				
				
				
				int Id = rs.getInt(1);
				String username = rs.getString(2);
				String songname = rs.getString(3);
				String artisname = rs.getString(4);
				String reason = rs.getString(5);
	
				
				Report r = new Report(Id , username , songname , artisname ,reason);
				
				customer.add(r);
				
			}
			

			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return customer;
			
		
	}
	

	public static boolean insertcustomer( String username , String songname , String artisname ,String reason ) {
		
		boolean isSuccess = false;
		
		
		
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into report values(0, '"+username+"' ,'"+songname+"' , '"+artisname+"' ,'"+reason+"' )";
			
			int rs = stmt.executeUpdate(sql);
			
			if (rs > 0) {
				
				isSuccess = true;
			}else {
				
				isSuccess = false;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
	
	public static boolean updateuser(String id , String username , String songname , String artisname ,String reason) {
		
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE report SET username='" + username + "' ,songname='"+songname+"' , artisname='"+artisname+"' ,reason='"+reason+"' " + "WHERE id='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			
			if (rs > 0) {
				
				isSuccess = true;
			}else {
				
				isSuccess = false;
			}
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
	}
	
	public static List<Report> getCustomerDetails(String id){
		
		
		int ConvertedId = Integer.parseInt(id);
		
		ArrayList<Report> cus = new ArrayList <>();
		
		
		
		try {
			
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM report WHERE id='"+ConvertedId+"'";
			
			rs = stmt.executeQuery(sql);
			
			
			while (rs.next()) {
				
				int Id = rs.getInt(1);
				String username = rs.getString(2);
				String songname = rs.getString(3);
				String artisname = rs.getString(4);
				String reason = rs.getString(5);
	
				
				Report r = new Report(Id , username , songname , artisname ,reason);
				
				cus.add(r);
				
			}
			
			
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
		return cus;
	}
	
	
	public static boolean deleteCustomer(String id) {
		
		int convertedId = Integer.parseInt(id);
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "DELETE FROM report WHERE id='"+convertedId+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			
			if (rs > 0) {
				
				isSuccess = true;
			}else {
				
				isSuccess = false;
			}
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
		
		
	
}