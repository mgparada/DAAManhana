package daa.manhana.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tracks")
public class Track {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(nullable = false)
	private String title;

	@Column(nullable = false)
	private int duration;
	
	@ManyToOne
	private CD cd; 
	
	public Track() {
	}
	
	public Track(String title, int duration, CD cd) {
		this.title = title;
		this.duration = duration;
		this.setCd(cd);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public CD getCd() {
		return cd;
	}

	public void setCd(CD cd) {
		this.cd = cd;
	}
}

