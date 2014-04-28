package daa.manhana.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

@Entity
@Table(name = "books")
@PrimaryKeyJoinColumn(name = "articleId")
@DiscriminatorValue(value = "book")
public class Book extends Article {
	
	@Column(nullable = false)
	private int pages;
	
	@Column(nullable = false, length = 70)
	private String author;
	
	@Column(nullable = false, length = 70)
	private String editorial;
	
	@Column(nullable = false)
	@Type(type = "date")
	private Date editionDate;
	
	@Column(nullable = false, length = 70)
	private String isbn;
	
	@Column(nullable = false)
	private String genre;
	
	@Column(nullable = false)
	private String language;
	
	public Book() {
		super();
	}
	
	public Book(String name, Date releaseDate, String description, String image, 
			int pages, String author, String editorial, 
			Date editionDate, String isbn, String genre, String language) {
		super(name, releaseDate, description, image);
		this.pages = pages;
		this.author = author;
		this.editorial = editorial;
		this.editionDate = editionDate;
		this.isbn = isbn;
		this.genre = genre;
		this.language = language;
	}

	public int getPages() {
		return pages;
	}

	public void setPages(int pages) {
		this.pages = pages;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getEditorial() {
		return editorial;
	}

	public void setEditorial(String editorial) {
		this.editorial = editorial;
	}

	public Date getEditionDate() {
		return editionDate;
	}

	public void setEditionDate(Date editionDate) {
		this.editionDate = editionDate;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	
}
