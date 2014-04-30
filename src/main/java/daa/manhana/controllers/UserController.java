package daa.manhana.controllers;

import daa.manhana.daos.UserDAO;
import daa.manhana.entities.User;

public class UserController extends GenericController<User> {

	public UserController() {
		this.gDAO = new UserDAO();
	}
}
