package daa.manhana.controllers;

import daa.manhana.daos.CDDAO;
import daa.manhana.entities.CD;

public class CDController extends GenericController<CD>{
	public CDController() {
		this.gDAO = new CDDAO();
	}
}
