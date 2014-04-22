package daa.manhana.rest;

import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import daa.manhana.controllers.ComicController;

@Path("/comics")
@Produces(MediaType.APPLICATION_JSON)
public class Comic extends Article<daa.manhana.entities.Comic> {
	public Comic() {
		this.artController = new ComicController();
	}
}