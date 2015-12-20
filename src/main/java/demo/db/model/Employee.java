package demo.db.model;

import java.util.Date;


public class Employee {
	int id;
	int dept_id;
	int position_id;
	String email;
	String name;
	String addr;
	String birth;
	String phone;
	String record_start;
	String record_end;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getDept_id() {
		return dept_id;
	}
	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}
	public int getPosition_id() {
		return position_id;
	}
	public void setPosition_id(int position_id) {
		this.position_id = position_id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRecord_start() {
		return record_start;
	}
	public void setRecord_start(String record_start) {
		this.record_start = record_start;
	}
	public String getRecord_end() {
		return record_end;
	}
	public void setRecord_end(String record_end) {
		this.record_end = record_end;
	}
	
	
}
