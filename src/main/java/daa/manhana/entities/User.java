package daa.manhana.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "users")
public class User {
	@Id
	@Column(length=200, nullable = false)
	private String name;
	
	@Column(length=200, nullable = false)
	private String email;
	
	@Column(length=200, nullable = false)
	private String nam;
	
	
	
	public User() {
		
	}
	
	public User(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
}
