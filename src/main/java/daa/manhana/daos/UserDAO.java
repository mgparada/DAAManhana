package daa.manhana.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import daa.manhana.entities.User;

public class UserDAO extends GenericDAO<User> {
	public UserDAO() {
		super();
	}

	public UserDAO(EntityManager em) {
		super(em);
	}

	public List<User> findByName(String name) {
		TypedQuery<User> q = createQuery(
				"SELECT object(u) "
				+ "FROM User AS u "
				+ "WHERE u.name "
				+ "LIKE :pattern"
		);
		
		q.setParameter("pattern", "%" + name + "%");
		
		return q.getResultList();
	}
	
	public List<User> getAll() {		
		return createQuery(
			"SELECT object(u) "
			+ "FROM User AS u "
			+ "ORDER BY u.name"
		).getResultList();
	}
	
	public User findUser(String name) {
		TypedQuery<User> q = createQuery(
				"SELECT object(u) "
				+ "FROM User AS u "
				+ "WHERE u.name=:pattern"
		);
		
		q.setParameter("pattern", name);
		
		return q.getSingleResult();
	}
	
}
