package daa.manhana.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import daa.manhana.controllers.MovieController;

@Path("/movies")
@Produces(MediaType.APPLICATION_JSON)
public class Movie {
	private final MovieController movieController;
	
	public Movie() {
		this.movieController = new MovieController();
	}
	
	@GET
	@Path("/all")
	public Response all() {
		try{
			return Response.ok(this.movieController.getAll()).build();
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
			return Response.ok(this.movieController.findByName(name)).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
	@GET
	@Path("/name/{name}/{results}/{page}")
	public Response search(
			@PathParam("name") final String name,
			@PathParam("page") final int page,
			@PathParam("results") final int numResults
			) {
		try {
			return Response.ok(this.movieController.findByNameWithPagination(name, page, numResults)).build();
		} catch (Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
	@GET
	@Path("/{id}")
	public Response concreteMovie(
			@PathParam("id") final int id) {
		try{
			return Response.ok(this.movieController.findById(id)).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	

	
}
