package daa.manhana.daos;

import javax.persistence.EntityManagerFactory;

import daa.manhana.entities.User;

public class UserDAO extends GenericDAO<User> {
	
	public UserDAO() {
		super();
	}

	public UserDAO(EntityManagerFactory emf) {
		super(emf);
	}
	
}
