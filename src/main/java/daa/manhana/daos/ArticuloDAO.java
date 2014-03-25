package daa.manhana.daos;

import java.util.List;

import javax.persistence.Query;

import daa.manhana.entities.Articulo;

public class ArticuloDAO extends GenericoDAO<Articulo> {
	public List<Articulo> findByName(String name) {
		Query q = em.createQuery("SELECT object(p) FROM Articulo AS p WHERE p.nombre LIKE :pattern");
		
		q.setParameter("pattern", "%" + name + "%");
		
		return q.getResultList();
	}
	
}
