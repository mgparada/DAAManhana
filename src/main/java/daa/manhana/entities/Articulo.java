package daa.manhana.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Articulo {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)	// default
	private long id;
	
	@Column(length=200, nullable=false)
	private String nombre;
	
	public Articulo() {
		
	}
	
	public Articulo(String nombre) {
		this.nombre = nombre;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
}
