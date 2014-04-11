package daa.manhana.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import daa.manhana.controllers.BookController;


@Path("/books")
@Produces(MediaType.APPLICATION_JSON)
public class Book {
	private BookController bookController;
	
	public Book() {
		this.bookController = new BookController();
	}
	
	@GET
	@Path("/all")
	public Response all() {
		try{
			return Response.ok(this.bookController.getAll()).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
	@GET
	@Path("/name/{name}")
	public Response search(
			@PathParam("name") final String name) {
		try{
			return Response.ok(this.bookController.findByName(name)).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
	@GET
	@Path("/{id}")
	public Response concreteBook(
			@PathParam("id") final int id) {
		try{
			return Response.ok(this.bookController.findById(id)).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	

}
