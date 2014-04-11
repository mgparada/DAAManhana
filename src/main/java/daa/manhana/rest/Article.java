package daa.manhana.rest;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import daa.manhana.controllers.ArticleController;


@Path("/articles")
@Produces(MediaType.APPLICATION_JSON)
public class Article {
	private ArticleController artController;
	
	public Article() {
		this.artController = new ArticleController();
	}
	
	@GET
	@Path("/all")
	public Response all() {
		try{
			return Response.ok(this.artController.getAll()).build();
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
			return Response.ok(this.artController.findConcreteObject(name)).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
	
	@GET
	@Path("/{id}")
	public Response concreteArticle(
			@PathParam("id") final int id) {
		try{
			return Response.ok(this.artController.findById(id)).build();
		}catch(Exception e) {
			e.printStackTrace();
			return Response.serverError().entity(e.getMessage()).build();
		}
	}
}
