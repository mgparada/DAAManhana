package daa.manhana.daos;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;


@WebListener
public class EntityManagerRequestListener implements ServletRequestListener {
	private static Map<Thread, EntityManager> THREAD_EM = new HashMap<>();
	
	public static void closeEntityManager() {
		if (THREAD_EM.containsKey(Thread.currentThread())) {
			THREAD_EM.remove(Thread.currentThread()).close();
		}
	}
	
	public static EntityManager getEntityManager() {
		if (!THREAD_EM.containsKey(Thread.currentThread())) {
			THREAD_EM.put(Thread.currentThread(), DAOUtils.createEntityManager());
		}
		
		return THREAD_EM.get(Thread.currentThread());
	}
	
	@Override
	public void requestDestroyed(ServletRequestEvent arg0) {
		closeEntityManager();
	}

	@Override
	public void requestInitialized(ServletRequestEvent arg0) {
	}
}
