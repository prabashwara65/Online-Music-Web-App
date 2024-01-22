package com.Customer_Procced;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Cus_ProceedDBUtil {
	
	//newly added boolean variable
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<Customer> Validate (String Username , String Password){
		
		ArrayList<Customer> customer = new ArrayList<>();
	
		
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM customer WHERE username='"+Username+"' and password='"+Password+"'";
			
			rs = stmt.executeQuery(sql);
			
			
			if(rs.next()) {
				
				
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String Uname = rs.getString(5);
				String Pssword = rs.getString(6);
				
				
				Customer c = new Customer(id, name , email , phone , Uname , Pssword);
				
				customer.add(c);
				
			}
			
			
			 
			
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return customer;
		
		
		
	}
	

	public static boolean insertcustomer(String name ,String email ,String phone ,String username  , String password ) {
		
		boolean isSuccess = false;
		
		
		
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into customer values(0, '"+name+"' ,'"+email+"' , '"+phone+"' ,'"+username+"', '"+password+"' )";
			
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
	
	public static boolean updateuser(String id , String name , String email , String phone , String username , String password) {
		
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE customer SET name='" + name + "' ,email='"+email+"' , phone='"+phone+"' ,username='"+username+"', password='"+password+"' "
					+ "WHERE id='"+id+"'";
			
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
	
	public static List<Customer> getCustomerDetails(String id){
		
		
		int ConvertedId = Integer.parseInt(id);
		
		ArrayList<Customer> cus = new ArrayList <>();
		
		
		
		try {
			
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM customer WHERE id='"+ConvertedId+"'";
			
			rs = stmt.executeQuery(sql);
			
			
			while (rs.next()) {
				
				int Id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String Uname = rs.getString(5);
				String Pssword = rs.getString(6);
				
				Customer c = new Customer(Id, name , email , phone , Uname , Pssword);
				
				cus.add(c);
				
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
			
			String sql = "DELETE FROM customer WHERE id='"+convertedId+"'";
			
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