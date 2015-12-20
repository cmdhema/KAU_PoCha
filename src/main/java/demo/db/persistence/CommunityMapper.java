package demo.db.persistence;

import java.util.List;

import demo.db.model.Board;

public interface CommunityMapper {
	public void insertBoard(Board board);
	public List<Board> getBoards(int id);
	public Board getBoard(int id);
}