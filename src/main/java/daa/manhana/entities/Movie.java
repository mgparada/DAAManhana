package daa.manhana.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "movies")
public class Movie extends Article {
	
	@Column(name = "director")
	private String director;

	public Movie() {
		super();
	}

	public Movie(String name, Date releaseDate, String description, String director) {
		super(name, releaseDate, description);
		
		this.director = director;
	}
	
	
	public String getDirectors() {
		return director;
	}
	
	public void setDirectors(String director) {
		this.director = director;
	}
	
}
