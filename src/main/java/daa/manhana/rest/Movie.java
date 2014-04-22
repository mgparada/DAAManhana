package daa.manhana.rest;

import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import daa.manhana.controllers.MovieController;

@Path("/movies")
@Produces(MediaType.APPLICATION_JSON)
public class Movie extends Article<daa.manhana.entities.Movie> {
	public Movie() {
		this.artController = new MovieController();
	}
}