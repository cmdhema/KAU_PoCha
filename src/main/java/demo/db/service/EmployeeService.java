package demo.db.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import demo.db.model.Employee;
import demo.db.persistence.EmployeeMapper;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployeeMapper mapper;

	public void addEmployee(Employee model) {
		mapper.addEmployee(model);
	}

	public Employee getEmployee(int id) {
		return mapper.getEmployee(id);
	}

	public List<Employee> getEmployees() {
		return mapper.getEmployees();
	}
	
	public void deleteEmployee(int id) {
		mapper.deleteEmployee(id);
	}
	
	public void updateEmployee(Employee model) {
		mapper.updateEmployee(model);
	}
}
