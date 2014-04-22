package daa.manhana.rest;

import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import daa.manhana.controllers.CDController;

@Path("/cds")
@Produces(MediaType.APPLICATION_JSON)
public class CD extends Article<daa.manhana.entities.CD> {
	public CD() {
		this.artController = new CDController();
	}
}