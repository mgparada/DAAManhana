package daa.manhana.daos;

import javax.persistence.EntityManager;

public class CDDAO extends ArticleDAO { 

	public CDDAO() {
		super();
	}

	public CDDAO(EntityManager em) {
		super(em);
	}

}
