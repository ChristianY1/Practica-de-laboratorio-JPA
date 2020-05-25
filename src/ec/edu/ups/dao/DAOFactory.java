package ec.edu.ups.dao;

import ec.edu.ups.JPA.JPADAOFactory;

public abstract class DAOFactory {
	protected static DAOFactory factory = new JPADAOFactory();
	
	public static DAOFactory getDaoFactory() {
		return factory;
	}
	
	public abstract void createTables();
	
	public abstract UsuarioDAO getUsuarioDAO();
	
	public abstract TelefonoDAO getTelefonoDAO();

}
