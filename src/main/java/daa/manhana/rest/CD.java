package daa.manhana.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import daa.manhana.controllers.CDController;

@Path("/cds")
@Produces(MediaType.APPLICATION_JSON)
public class CD {
	private final CDController CDController;
	
	public CD() {
		this.CDController = new CDController();
	}
	
	@GET
	@Path("/all")
	public Response all() {
		try{
			return Response.ok(this.CDController.getAll()).build();
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
			return Response.ok(this.CDController.findByName(name)).build();
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
			return Response.ok(this.CDController.findByNameWithPagination(name, page, numResults)).build();
		} catch (Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
	@GET
	@Path("/{id}")
	public Response concreteCD(
			@PathParam("id") final int id) {
		try{
			return Response.ok(this.CDController.findById(id)).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
}
