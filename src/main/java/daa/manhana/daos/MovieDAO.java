package daa.manhana.daos;

import javax.persistence.EntityManager;

public class MovieDAO extends ArticleDAO { 

	public MovieDAO() {
		super();
	}

	public MovieDAO(EntityManager em) {
		super(em);
	}

}
