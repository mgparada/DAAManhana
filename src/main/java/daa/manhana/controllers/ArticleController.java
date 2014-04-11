package daa.manhana.controllers;

import daa.manhana.daos.ArticleDAO;
import daa.manhana.entities.Article;

public class ArticleController extends GenericController<Article> {
	
	public ArticleController() {
		this.gDAO = new ArticleDAO<Article>();
	}
}
