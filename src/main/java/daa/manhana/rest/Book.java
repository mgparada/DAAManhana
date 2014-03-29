package daa.manhana.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import daa.manhana.daos.BookDAO;
//import daa.manhana.daos.BookDAO;


@Path("/books")
@Produces(MediaType.APPLICATION_JSON)
public class Book {
	private final BookDAO bookDAO;
	
	public Book() {
		this.bookDAO = new BookDAO();
	}
	
	@GET
	@Path("/all")
	public Response all() {
		try{
			return Response.ok(this.bookDAO.getAll()).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
	@GET
	@Path("/name")
	public Response search(
			@QueryParam("name") final String name) {
		try{
			return Response.ok(this.bookDAO.findByName(name)).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	

}
