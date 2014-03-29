package daa.manhana.daos;

import javax.persistence.EntityManagerFactory;

import daa.manhana.entities.Movie;

public class MovieDAO extends ArticleDAO<Movie> { 

	public MovieDAO() {
		super();
	}

	public MovieDAO(EntityManagerFactory emf) {
		super(emf);
	}

}
