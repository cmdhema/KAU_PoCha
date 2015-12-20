package demo.db.model;

import java.util.Date;

public class Order {
	
	private int idx;
	private int userIdx;
	private int cost;
	private User user;
	private String title;
	private String content;
	private Date date;
	
	public enum Type {
		notice, faq
	}
	public int getIdx() {
		return idx;
	}
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public User getOwner() {
		return user;
	}
	public void setOwner(User owner) {
		this.user = owner;
		this.userIdx = owner.getIdx();
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	
}
