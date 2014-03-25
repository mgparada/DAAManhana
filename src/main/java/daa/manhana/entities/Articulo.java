package daa.manhana.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "articulos")
public class Articulo {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)	// default
	private Long id;
	
	@Column(length=200, nullable=false)
	private String nombre;
	
	@Column(nullable=false)
	private Date fechaAlta;


	public Articulo() {
		
	}
	
	public Articulo(String nombre, Date fechaAlta) {
		this.nombre = nombre;
		this.fechaAlta = fechaAlta;
	}

	public String getNombre() {
		return nombre;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public long getId() {
		return this.id;
	}
	
	public Date getFechaAlta() {
		return fechaAlta;
	}

	public void setFechaAlta(Date fechaAlta) {
		this.fechaAlta = fechaAlta;
	}
	
}
