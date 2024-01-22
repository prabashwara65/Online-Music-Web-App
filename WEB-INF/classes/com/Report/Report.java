package com.Report;

public class Report {
	private int id;
	
	private String username;
	private String songname;
	private String artisname;
	private String reason;
	
	public Report(int id, String username, String songname, String artisname, String reason) {
		super();
		this.id = id;
		this.username = username;
		this.songname = songname;
		this.artisname = artisname;
		this.reason = reason;
	}

	public int getId() {
		return id;
	}

	public String getUsername() {
		return username;
	}

	public String getSongname() {
		return songname;
	}

	public String getArtisname() {
		return artisname;
	}

	public String getReason() {
		return reason;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setSongname(String songname) {
		this.songname = songname;
	}

	public void setArtisname(String artisname) {
		this.artisname = artisname;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}
	
	


}
