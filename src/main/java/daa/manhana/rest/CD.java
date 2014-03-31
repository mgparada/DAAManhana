package daa.manhana.rest;

import javax.ws.rs.DefaultValue;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import daa.manhana.daos.CDDAO;

@Path("/cds")
@Produces(MediaType.APPLICATION_JSON)
public class CD {
	private final CDDAO CDDAO;
	
	public CD() {
		this.CDDAO = new CDDAO();
	}
	
	@GET
	@Path("/all")
	public Response all() {
		try{
			return Response.ok(this.CDDAO.getAll()).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
	@GET
	@Path("/name")
	public Response search(
			@DefaultValue("") @QueryParam("name") final String name) {
		try{
			return Response.ok(this.CDDAO.findByName(name)).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
	@GET
	@Path("/id")
	public Response concreteCD(
			@DefaultValue("12") @QueryParam("id") final int id) {
		try{
			return Response.ok(this.CDDAO.findById(id)).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
}
