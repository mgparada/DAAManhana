package daa.manhana.daos;


import javax.persistence.EntityManagerFactory;

import daa.manhana.entities.CD;

public class CDDAO extends ArticleDAO<CD> { 

	public CDDAO() {
		super();
	}

	public CDDAO(EntityManagerFactory emf) {
		super(emf);
	}
}
