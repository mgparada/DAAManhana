package daa.manhana.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "cds")
@PrimaryKeyJoinColumn(name = "articleId")
public class CD extends Article {
	@Column(nullable = false)
	int duration;
	
	public CD() {
		super();
	}

	public CD(String name, Date releaseDate, String description, int duration) {
		super(name, releaseDate, description);
		this.duration = duration;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}
	
	
}
