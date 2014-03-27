package daa.manhana.entities;

import java.util.Date;

import javax.persistence.Column;
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
//@DiscriminatorColumn(name = "ARTICLE_TYPE", discriminatorType = DiscriminatorType.STRING, length = 20)
public class Article {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)	// default
<<<<<<< HEAD
	@Column(name = "articleId")
	protected int id;
	
	@Column(length=200, nullable = false)
	protected String name;
	
	@Column(nullable = false)
	protected Date releaseDate;
	
=======
	private int id;

	@Column(length=200, nullable = false)
	private String name;

	@Column(nullable = false)
	private Date releaseDate;

>>>>>>> e02c40c7903cf73b64066193835944732912e9cd
	@Column(nullable = true, length=65536)
	protected String description;

	
	public Article() {

	}
<<<<<<< HEAD
	
	public Article(String name, Date releaseDate, String description) {
		this.name = name;
		this.releaseDate = releaseDate;
=======

	public Article(String nombre, Date fechaAlta, String description) {
		this.name = nombre;
		this.releaseDate = fechaAlta;
>>>>>>> e02c40c7903cf73b64066193835944732912e9cd
		this.description = description;
//		this.articleType = artType;
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

<<<<<<< HEAD
	public void setName(String name) {
		this.name = name;
	}

=======
	public void setNombre(String name) {
		this.name = name;
	}

	public int getId() {
		return this.id;
	}

>>>>>>> e02c40c7903cf73b64066193835944732912e9cd
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

<<<<<<< HEAD
//	public ArticleType getArticleType() {
//		return articleType;
//	}
//
//	public void setArticleType(ArticleType articleType) {
//		this.articleType = articleType;
//	}

	
}
=======
}
>>>>>>> e02c40c7903cf73b64066193835944732912e9cd
