package com.basic.reserve.vo;

public class Board {
	
	private int id;
	private String memberId;
	private String Title;
	private String Body;
	private String Date;
	
	public Board(){}
	
	public Board(int id, String memberId, String title, String body, String date) {
		this.id = id;
		this.memberId = memberId;
		Title = title;
		Body = body;
		Date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getBody() {
		return Body;
	}
	public void setBody(String body) {
		Body = body;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	
	
}
