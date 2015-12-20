package demo.db.persistence;


import java.util.List;

import demo.db.model.Family;

public interface FamilyMapper {
	public int addFamily(Family model);
	public List<Family> getFamily(int id);
}
