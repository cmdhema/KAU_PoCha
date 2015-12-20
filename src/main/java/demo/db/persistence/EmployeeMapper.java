package demo.db.persistence;


import java.util.List;

import demo.db.model.Employee;

public interface EmployeeMapper {
	public int addEmployee(Employee model);
	public List<Employee> getEmployees();
	public Employee getEmployee(int id);
	public void deleteEmployee(int id);
	public void updateEmployee(Employee model);
}
