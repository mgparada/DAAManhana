package daa.manhana.rest;

import javax.persistence.EntityManagerFactory;
import javax.ws.rs.DefaultValue;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import daa.manhana.daos.ComicDAO;

@Path("/comics")
@Produces(MediaType.APPLICATION_JSON)
public class Comic {
	private final ComicDAO comicDAO;
	
	public Comic() {
		this.comicDAO = new ComicDAO();
	}
	
	public Comic(EntityManagerFactory emf) {
		this.comicDAO = new ComicDAO(emf);
	}
	@GET
	@Path("/all")
	public Response all() {
		try{
			return Response.ok(this.comicDAO.getAll()).build();
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
			return Response.ok(this.comicDAO.findByName(name)).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
	@GET
	@Path("/id")
	public Response concreteComic(
			@DefaultValue("15") @QueryParam("id") final int id) {
		try{
			return Response.ok(this.comicDAO.findById(id)).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
}
