package daa.manhana.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "comics")
@PrimaryKeyJoinColumn(name = "articleId")
public class Comic extends Book {
	@Column(nullable = false)
	private int chapter;
	
	public Comic() {
		super();
	}
	
	public Comic(String name, Date releaseDate, String description, 
			int pages, String author, 
			String editorial, Date editionDate, String isbn, int chapter) {
		super(name, releaseDate, description, pages, author, editorial, editionDate, isbn);
		this.chapter = chapter;
	}
	
	public int getChapter() {
		return chapter;
	}
	
	public void setChapter(int chapter) {
		this.chapter = chapter;
	}

}
