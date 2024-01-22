package com.Songs.Add;

public class Songs {

	private int songid;
	private String songtitle;
	private String artist;
	private String email;
	private String username;
	private String password;
	
	
	
	
	public Songs(int songid, String songtitle, String artist, String email, String username, String password) {
		super();
		this.songid = songid;
		this.songtitle = songtitle;
		this.artist = artist;
		this.email = email;
		this.username = username;
		this.password = password;
	}




	public int getSongid() {
		return songid;
	}




	public void setSongid(int songid) {
		this.songid = songid;
	}




	public String getSongtitle() {
		return songtitle;
	}




	public void setSongtitle(String songtitle) {
		this.songtitle = songtitle;
	}




	public String getArtist() {
		return artist;
	}




	public void setArtist(String artist) {
		this.artist = artist;
	}




	public String getEmail() {
		return email;
	}




	public void setEmail(String email) {
		this.email = email;
	}




	public String getUsername() {
		return username;
	}




	public void setUsername(String username) {
		this.username = username;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	

	
	
}


