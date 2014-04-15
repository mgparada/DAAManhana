package daa.manhana.controllers;

import java.util.List;

import daa.manhana.daos.GenericDAO;

public abstract class GenericController<T> {
	protected GenericDAO<T> gDAO;
	
	
	public List<T> getAll() {
		return gDAO.getAll();
	}
	
	public Object getAll(int page, int numResults) {
		return gDAO.getAll(page, numResults);
	}
	
	public T findConcreteObject (String name) {
		return gDAO.findConcreteObject(name);
	}
	
	public List<T> findByName (String name) {
		return gDAO.findByName(name);
	}
	
	public List<T> findByName(String name, int page, int numResults) {
		return gDAO.findByName(name, page, numResults);
	}
	
	public void save(T entity) {
		gDAO.save(entity);
	}
	
	public void update(T entity) {
		gDAO.update(entity);
	}
	
	public void delete(T entity) {
		gDAO.delete(entity);
	}
	
	public T findById(Object id) {
		return gDAO.findById(id);
	}
}
