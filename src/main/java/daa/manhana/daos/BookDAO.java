package daa.manhana.daos;

import javax.persistence.EntityManagerFactory;

import daa.manhana.entities.Book;

public class BookDAO extends ArticleDAO<Book> { 

	public BookDAO() {
		super();
	}

	public BookDAO(EntityManagerFactory emf) {
		super(emf);
	}
}
