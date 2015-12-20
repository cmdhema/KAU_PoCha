package demo.db.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.db.model.Family;
import demo.db.persistence.FamilyMapper;

@Service
public class FamilyService {
	
	@Autowired
	private FamilyMapper mapper;
	
	public void addFamily(Family model) {
		mapper.addFamily(model);
	}
	
	public List<Family> getFamily(int id) {
		return mapper.getFamily(id);
	}
}
