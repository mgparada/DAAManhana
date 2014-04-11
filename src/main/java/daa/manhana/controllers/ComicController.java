package daa.manhana.controllers;

import daa.manhana.daos.ComicDAO;
import daa.manhana.entities.Comic;

public class ComicController extends GenericController<Comic>{
	public ComicController() {
		this.gDAO = new ComicDAO();
	}
}
