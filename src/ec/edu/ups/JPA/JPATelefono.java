package ec.edu.ups.JPA;

import javax.persistence.EntityManager;

import ec.edu.ups.Entidades.Telefono;
import ec.edu.ups.dao.TelefonoDAO;

public class JPATelefono extends JPAGenericDAO<Telefono, Integer> implements TelefonoDAO {

	public JPATelefono(Class<Telefono> pesistentClass, EntityManager em) {
		super(pesistentClass, em);
		// TODO Auto-generated constructor stub
	}
}
