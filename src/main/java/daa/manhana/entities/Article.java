package daa.manhana.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "articles")
public class Article {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)	// default
	private int id;
	
	@Column(length=200, nullable = false)
	private String name;
	
	@Column(nullable = false)
	private Date releaseDate;
	
	@Column(nullable = true, length=65536)
	private String description;


	public Article() {
		
	}
	
	public Article(String nombre, Date fechaAlta, String description) {
		this.name = nombre;
		this.releaseDate = fechaAlta;
		this.description = description;
	}

	public String getName() {
		return name;
	}
	
	public void setNombre(String name) {
		this.name = name;
	}
	
	public int getId() {
		return this.id;
	}
	
	public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date release_date) {
		this.releaseDate = release_date;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
}
