package com.basic.reserve.vo;

public class Board {
	
	private int id;
	private String memberId;
	private String title;
	private String body;
	private String date;
	
	public Board(){}
	
	public Board(int id, String memberId, String title, String body, String date) {
		this.id = id;
		this.memberId = memberId;
		this.title = title;
		this.body = body;
		this.date = date;
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
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
}
