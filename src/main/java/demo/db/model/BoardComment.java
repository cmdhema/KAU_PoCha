package demo.db.model;

import java.util.Date;

public class BoardComment {

	private int idx;
	private int boardIdx;
	private int userIdx;
	private String content;
	private Date date;
	
	private Board board;
	private User user;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getBoardIdx() {
		return boardIdx;
	}
	public void setBoardIdx(int boardIdx) {
		this.boardIdx = boardIdx;
	}
	public int getUserIdx() {
		return userIdx;
	}
	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
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
	
	public Board getBoard() {
		return board;
	}
	public void setBoard(Board board) {
		this.board = board;
		this.boardIdx = board.getIdx();
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
		this.userIdx = user.getIdx();
	}
}
