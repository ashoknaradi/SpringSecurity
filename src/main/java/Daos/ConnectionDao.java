package Daos;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

import Pojos.TestUser;

public class ConnectionDao {
	public Session openSession() {
		Configuration configure = new AnnotationConfiguration().configure("hibernate.cfg.xml");
		SessionFactory sf = configure.buildSessionFactory();
		Session session = sf.openSession();
		return session;
	}

	public List<TestUser> fetchUsersList() {
		Session session = openSession();
		Query query = session.createQuery("from TestUser");
		List<TestUser> list = query.list();
		session.close();
		return list;
	}
}
