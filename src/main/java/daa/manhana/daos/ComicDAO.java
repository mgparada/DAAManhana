package daa.manhana.daos;

import javax.persistence.EntityManager;

public class ComicDAO extends ArticleDAO { 

	public ComicDAO() {
		super();
	}

	public ComicDAO(EntityManager em) {
		super(em);
	}

}
