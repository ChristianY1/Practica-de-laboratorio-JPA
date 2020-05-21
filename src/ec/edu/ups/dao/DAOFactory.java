package ec.edu.ups.dao;


public abstract class DAOFactory {
	protected static DAOFactory factory = new JDBCFactory();
	
	public static DAOFactory getDaoFactory() {
		return factory;
	}
	
	public abstract void createTables();
	
	public abstract UsuarioDAO getUsuarioDAO();
	
	public abstract TelefonoDAO getTelefonoDAO();

}
