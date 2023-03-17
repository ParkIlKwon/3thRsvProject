package com.basic.reserve.vo;

public class Ticket {

	private int id ;
	private String image;
	private String contents;
	private String category;
	private String title;
	private String dateStart;
	private String dateEnd;
	private String location;
    private String info;
	private int duration;
	private int seatNum ;
	private int price; 
	private int discount;
	private float star;
	
	public Ticket(int id, String image, String contents, String category, String title, String dateStart,
			String dateEnd, String location, String info, int duration, int seatNum, int price, int discount,
			float star) {
		this.id = id;
		this.image = image;
		this.contents = contents;
		this.category = category;
		this.title = title;
		this.dateStart = dateStart;
		this.dateEnd = dateEnd;
		this.location = location;
		this.info = info;
		this.duration = duration;
		this.seatNum = seatNum;
		this.price = price;
		this.discount = discount;
		this.star = star;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDateStart() {
		return dateStart;
	}

	public void setDateStart(String dateStart) {
		this.dateStart = dateStart;
	}

	public String getDateEnd() {
		return dateEnd;
	}

	public void setDateEnd(String dateEnd) {
		this.dateEnd = dateEnd;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public int getSeatNum() {
		return seatNum;
	}

	public void setSeatNum(int seatNum) {
		this.seatNum = seatNum;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public float getStar() {
		return star;
	}

	public void setStar(float star) {
		this.star = star;
	}


	
	public Ticket(){}

	

	
	
	
}




