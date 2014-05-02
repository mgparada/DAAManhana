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
	private String nickname;
	
	@Column(length=200, nullable = false)
	private String image;
	
	@Column(length=200, nullable = false)
	private String name;
	
	@Column(length=200, nullable = false)
	private String email;
	
	@Column(length=200, nullable = false)
	private String surname;
	
	
	public User() {
		
	}
	
	public User(String nickname, String name, String email, String surname, String image) {
		this.nickname = nickname;
		this.name = name;
		this.email = email;
		this.surname = surname;
		this.image = image;
	}

	public String getNickname() {
		return nickname;
	}
	
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	
}
