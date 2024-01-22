package com.Songs.Add;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Songs.Add.Songs;
import com.Songs.Add.DBconnect;



public class SongsDBUtil {
	

	    //newly added boolean variable
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;

		public static List<Songs> Validate (String Username , String Password){
			
			ArrayList<Songs> Song = new ArrayList<>();
		
			try {
				
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "SELECT * FROM Song WHERE username='"+Username+"' and password='"+Password+"'";
				
				rs = stmt.executeQuery(sql);
				
				
				if(rs.next()) {                                         
					
					
					int songid = rs.getInt(1);
					String songtitle = rs.getString(2);
					String artist = rs.getString(3);
					String email = rs.getString(4);
					String username = rs.getString(5);
					String password = rs.getString(6);
					
					
					Songs s = new Songs(songid, songtitle , artist , email, username ,Password );
					
					Song.add(s);
					
	
					
				}
				
				
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			
			return Song;	
	
		}
		
		
		
		public static boolean insertsong(String songtitle ,String artist ,String email ,String username  , String password ) {
			
			boolean isSuccess = false;
			
			
			
			try {
				
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "INSERT INTO Song VALUES(0, '"+songtitle+"' ,'"+artist+"' , '"+email+"' ,'"+username+"', '"+password+"' )";
				
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
		
		public static boolean updateuser(String songid , String songtitle ,String artist ,String email ,String username  , String password ) {
			
			
			try {
				
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "UPDATE Song SET songtitle='" + songtitle + "' ,artist='"+artist+"' , email='"+email+"' ,username='"+username+"', password='"+password+"' "
						+ "WHERE songid='"+songid+"'";
				
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
		
		
		public static List<Songs> getSongDetails(String songid){
			
			
			int ConvertedId = Integer.parseInt(songid);
			
			ArrayList<Songs> song = new ArrayList <>();
			
			
			
			try {
				
				
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "SELECT * FROM Song WHERE songid='"+ConvertedId+"'";
				
				rs = stmt.executeQuery(sql);
				
				
				while (rs.next()) {
					
					int Songid = rs.getInt(1);
					String songtitle = rs.getString(2);
					String artist = rs.getString(3);
					String email = rs.getString(4);
					String username = rs.getString(5);
					String Pssword = rs.getString(6);
					
					
					Songs s = new Songs(Songid, songtitle , artist , email, username ,Pssword );
					
					song.add(s);
					
				}

				
			} catch (Exception e) {
				
				e.printStackTrace();
			}

			return song;
		}
		
		
		public static boolean deleteSong(String songId) {
			
			int convertedId = Integer.parseInt(songId);
			
			try {
				
				con = DBconnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "DELETE FROM Song WHERE songid='"+convertedId+"'";
				
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

