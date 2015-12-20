package demo.db.model;

import java.util.Date;

public class Board {
	
	private int idx;
	private int userIdx;
	private User user;
	private String title;
	private String content;
	private Date date;
	private int hit = 0;
	private Type type;
	private String category;
	private boolean lock = false;
	
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
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public Type getType() {
		return type;
	}
	public void setType(Type type) {
		this.type = type;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public User getOwner() {
		return user;
	}
	public void setOwner(User owner) {
		this.user = owner;
		this.userIdx = owner.getIdx();
	}
	public boolean isLock() {
		return lock;
	}
	public void setLock(boolean lock) {
		this.lock = lock;
	}
}
