package com.basic.reserve.vo;

public class Place {
	
	private int id;
	private String name;
	private String title;
	private String image;
	
	public Place(){}
	
	public Place(int id, String name, String title, String image) {
		super();
		this.id = id;
		this.name = name;
		this.title = title;
		this.image = image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	

}
