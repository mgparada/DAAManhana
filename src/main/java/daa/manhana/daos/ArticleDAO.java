package daa.manhana.daos;

import javax.persistence.EntityManagerFactory;

public class ArticleDAO<T> extends GenericDAO<T> {
	public ArticleDAO() {
		super();
	}

	public ArticleDAO(EntityManagerFactory emf) {
		super(emf);
	}
	
}
