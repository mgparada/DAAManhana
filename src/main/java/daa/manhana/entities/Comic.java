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

@Entity
@Table(name = "comics")
@PrimaryKeyJoinColumn(name = "articleId")
@DiscriminatorValue(value = "comic")
public class Comic extends Book {
	
	@Column(nullable = false)
	private int chapter;
	
	@Column(nullable = false)
	private int number;
	
	@Column(nullable = false)
	private int collection;
	
	@OneToMany(mappedBy = "comic", fetch = FetchType.EAGER)
	private List<Cartoonist> cartoonists;
	
	public Comic() {
		super();
	}
	
	public Comic(String name, Date releaseDate, String description, String image, 
			int pages, String author, String editorial, Date editionDate, String isbn, 
			String genre, String language,
			int chapter, int number, int collection) {
		super(name, releaseDate, description, image, pages, author, editorial, editionDate, isbn, genre, language);
		this.chapter = chapter;
		this.number = number;
		this.collection = collection;
	}
	
	public int getChapter() {
		return chapter;
	}
	
	public void setChapter(int chapter) {
		this.chapter = chapter;
	}

}
