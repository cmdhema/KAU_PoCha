package demo.db.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.db.model.Board;
import demo.db.persistence.CommunityMapper;

@Service
public class CommunityService {

	@Autowired
	private CommunityMapper mapper;
	
	public List<Board> getBoards(int id) {
		return mapper.getBoards(id);
	}
	
	public Board getBoard(int id) {
		return mapper.getBoard(id);
	}
	
}
