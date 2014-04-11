package daa.manhana.daos;

import javax.persistence.Persistence;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class PersistenceFactory implements ServletContextListener{
	 private static final String PERSISTENCE_UNIT = "Grupo-Manhana";
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		DAOUtils.getEmf().close();
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		DAOUtils.setEmf(Persistence.createEntityManagerFactory(PERSISTENCE_UNIT));		
	}

}
