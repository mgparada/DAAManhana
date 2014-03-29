package daa.manhana.daos;

import javax.persistence.EntityManagerFactory;

import daa.manhana.entities.Comic;

public class ComicDAO extends ArticleDAO<Comic> { 

	public ComicDAO() {
		super();
	}

	public ComicDAO(EntityManagerFactory emf) {
		super(emf);
	}

}
