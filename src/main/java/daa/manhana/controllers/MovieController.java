package daa.manhana.controllers;

import daa.manhana.daos.MovieDAO;
import daa.manhana.entities.Movie;

public class MovieController extends GenericController<Movie>{
	public MovieController() {
		this.gDAO = new MovieDAO();
	}
}
