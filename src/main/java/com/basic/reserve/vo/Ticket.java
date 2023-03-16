package com.basic.reserve.vo;

public class Ticket {

	private int id ;
	private String image;
	private String Contents;
	private String Category;
	private String Title;
	private String DateStart;
	private String DateEnd;
	private String Location;
    private String Info;
	private int Duration;
	private int SeatNum ;
	private int Price; 
	private int Discount;
	private int Star;
	
	public Ticket(){}

	public Ticket(int id, String image, String contents, String category, String title, String dateStart,
			String dateEnd, String location, String info, int duration, int seatNum, int price, int discount,
			int star) {
		super();
		this.id = id;
		this.image = image;
		Contents = contents;
		Category = category;
		Title = title;
		DateStart = dateStart;
		DateEnd = dateEnd;
		Location = location;
		Info = info;
		Duration = duration;
		SeatNum = seatNum;
		Price = price;
		Discount = discount;
		Star = star;
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
		return Contents;
	}

	public void setContents(String contents) {
		Contents = contents;
	}

	public String getCategory() {
		return Category;
	}

	public void setCategory(String category) {
		Category = category;
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

	public String getLocation() {
		return Location;
	}

	public void setLocation(String location) {
		Location = location;
	}

	public String getInfo() {
		return Info;
	}

	public void setInfo(String info) {
		Info = info;
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




