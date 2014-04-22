package daa.manhana.rest;

import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import daa.manhana.controllers.BookController;


@Path("/books")
@Produces(MediaType.APPLICATION_JSON)
public class Book extends Article<daa.manhana.entities.Book> {
	public Book() {
		this.artController = new BookController();
	}
}