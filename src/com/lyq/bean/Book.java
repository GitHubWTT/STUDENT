package com.lyq.bean;

public class Book {
	public static final int PAGE_SIZE=2;
	private int id;
	private String name;
	private double price;
	private int bookCount;
	private String author;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id=id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name=name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price=price;
	}
	public int getbookCount() {
		return bookCount;
	}
	public void setbookCount(int bookCount) {
		this.bookCount=bookCount;
	}
	public String getauthor() {
		return author;
	}
	public void setauthor(String author) {
		this.author=author;
	}
}