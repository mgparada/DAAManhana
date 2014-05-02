package daa.manhana.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import daa.manhana.controllers.GenericController;
import daa.manhana.controllers.UserController;

@Path("/users")
@Produces(MediaType.APPLICATION_JSON)
public class User {

	protected GenericController<daa.manhana.entities.User> userController;
	
	public User() {
		this.userController = new UserController();
	}
	
	@GET
	@Path("/")
	public Response all() {
		try{
			return Response.ok(this.userController.getAll()).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
	@GET
	@Path("/{results}/{page}")
	public Response all(
			@PathParam("page") final int page,
			@PathParam("results") final int numResults
			) {
		try{
			return Response.ok(this.userController.getAll(page, numResults)).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
	@GET
	@Path("/count")
	public Response count() {
		try{
			return Response.ok(this.userController.count()).build();
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
			return Response.ok(this.userController.findByName(name)).build();
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
			return Response.ok(this.userController.findByName(name, page, numResults)).build();
		} catch (Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
	@GET
	@Path("/{id}")
	public Response concreteArticle(
			@PathParam("id") final String id) {
		try{
			return Response.ok(this.userController.findById(id)).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
}
