package daa.manhana.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;


@Entity
@Table(name = "articles")
@Inheritance(strategy = InheritanceType.JOINED)
@DiscriminatorColumn(
	    name="discriminator",
	    discriminatorType=DiscriminatorType.STRING
	)
public class Article {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)	// default
	@Column(name = "articleId")
	protected int id;
	
	@Column(length=200, nullable = false)
	protected String name;
	
	@Column(nullable = false)
	protected Date releaseDate;

	@Column(nullable = true, length=65536)
	protected String description;
	
	@Column(name = "discriminator", nullable = false)
	protected String discriminator;
	
	public Article() {

	}
	
	public Article(String name, Date releaseDate, String description) {
		this.name = name;
		this.releaseDate = releaseDate;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getDiscriminator() {
		return discriminator;
	}
	
	public void setDiscriminator(String discriminator) {
		this.discriminator = discriminator;
	}
}
