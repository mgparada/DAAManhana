package daa.manhana.entities;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import daa.manhana.entities.Track;

@Entity
@Table(name = "cds")
@PrimaryKeyJoinColumn(name = "articleId")
@DiscriminatorValue(value = "cd")
public class CD extends Article {
	
	@Column(nullable = false)
	private String groupName;
	
	@Column(nullable = false, length = 70)
	private String asin;
	
	@Column(nullable = false, length = 70)
	private int discsNumber;
	
	@Column(nullable = false)
	private int duration;
	
	@OneToMany(mappedBy = "cd", fetch = FetchType.EAGER)
	private List<Track> tracks;
	
	public CD() {
		super();
	}

	public CD(String name, Date releaseDate, String description, String image, 
			int duration, String groupName, String asin, int discsNumber) {
		super(name, releaseDate, description, image);
		this.duration = duration;
		this.groupName = groupName;
		this.asin = asin;
		this.discsNumber = discsNumber;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public String getAsin() {
		return asin;
	}

	public void setAsin(String asin) {
		this.asin = asin;
	}

	public int getDiscsNumber() {
		return discsNumber;
	}

	public void setDiscsNumber(int discsNumber) {
		this.discsNumber = discsNumber;
	}

	public List<Track> getTracks() {
		return tracks;
	}

	public void setTracks(List<Track> tracks) {
		this.tracks = tracks;
	}
	
	
}
