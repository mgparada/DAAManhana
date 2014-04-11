package daa.manhana.controllers;

import daa.manhana.daos.BookDAO;
import daa.manhana.entities.Book;

public class BookController extends GenericController<Book> {
	
	public BookController() {
		this.gDAO = new BookDAO();
	}
}
