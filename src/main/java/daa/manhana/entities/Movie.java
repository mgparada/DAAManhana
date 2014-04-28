package daa.manhana.entities;

import java.util.Date;
import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "movies")
@DiscriminatorValue(value = "movie")
public class Movie extends Article {
	
	@Column(nullable = false)
	private String director;
	
	@Column(nullable = false)
	private String producer;
	
	@Column(nullable = false)
	private String country;
	
	@Column(nullable = false)
	private String language;
	
	@Column(nullable = false)
	private int duration;
	
	@ElementCollection
	@CollectionTable(name = "actors", joinColumns=@JoinColumn(columnDefinition = "articleId") )
	@Column(name = "actors")
	private List<String> actors;

	public Movie() {
		super();
	}

	public Movie(String name, Date releaseDate, String description, String image, 
			String director, String producer, String country, String language, int duration, List<String> actors) {
		super(name, releaseDate, description, image);
		
		this.director = director;
		this.producer = producer;
		this.country = country;
		this.language = language;
		this.duration = duration;
		this.actors = actors;
	}
	
	
	public String getDirectors() {
		return director;
	}
	
	public void setDirectors(String director) {
		this.director = director;
	}

	public List<String> getActors() {
		return actors;
	}

	public void setActors(List<String> actors) {
		this.actors = actors;
	}
	
}
