package daa.manhana.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import daa.manhana.daos.MovieDAO;

@Path("/movies")
@Produces(MediaType.APPLICATION_JSON)
public class Movie {
	private final MovieDAO movieDAO;
	
	public Movie() {
		this.movieDAO = new MovieDAO();
	}
	
	@GET
	@Path("/all")
	public Response all() {
		try{
			return Response.ok(this.movieDAO.getAll()).build();
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
			return Response.ok(this.movieDAO.findByName(name)).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
	@GET
	@Path("/{id}")
	public Response concreteMovie(
			@PathParam("id") final int id) {
		try{
			return Response.ok(this.movieDAO.findById(id)).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
}