package com.basic.reserve.vo;

public class Ticket {

	private String image;
	private String Category;
	private int id ;
	private String Title;
	private String DateStart;
	private String DateEnd;
	private String Company;
	private String Location;
	private int Duration;
	private int SeatNum ;
	private int Price; 
	private int Discount;
	private int Star;
	
	public Ticket(){}

	public Ticket(String image, String category, int id, String title, String dateStart, String dateEnd, String company,
			String location, int duration, int seatNum, int price, int discount, int star) {
		this.image = image;
		Category = category;
		this.id = id;
		Title = title;
		DateStart = dateStart;
		DateEnd = dateEnd;
		Company = company;
		Location = location;
		Duration = duration;
		SeatNum = seatNum;
		Price = price;
		Discount = discount;
		Star = star;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getCategory() {
		return Category;
	}

	public void setCategory(String category) {
		Category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getDateStart() {
		return DateStart;
	}

	public void setDateStart(String dateStart) {
		DateStart = dateStart;
	}

	public String getDateEnd() {
		return DateEnd;
	}

	public void setDateEnd(String dateEnd) {
		DateEnd = dateEnd;
	}

	public String getCompany() {
		return Company;
	}

	public void setCompany(String company) {
		Company = company;
	}

	public String getLocation() {
		return Location;
	}

	public void setLocation(String location) {
		Location = location;
	}

	public int getDuration() {
		return Duration;
	}

	public void setDuration(int duration) {
		Duration = duration;
	}

	public int getSeatNum() {
		return SeatNum;
	}

	public void setSeatNum(int seatNum) {
		SeatNum = seatNum;
	}

	public int getPrice() {
		return Price;
	}

	public void setPrice(int price) {
		Price = price;
	}

	public int getDiscount() {
		return Discount;
	}

	public void setDiscount(int discount) {
		Discount = discount;
	}

	public int getStar() {
		return Star;
	}

	public void setStar(int star) {
		Star = star;
	}
	
	
}




