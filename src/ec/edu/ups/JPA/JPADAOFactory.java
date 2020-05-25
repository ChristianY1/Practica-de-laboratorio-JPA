package ec.edu.ups.JPA;

import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.dao.TelefonoDAO;
import ec.edu.ups.dao.UsuarioDAO;

public class JPADAOFactory extends DAOFactory{

	@Override
	public void createTables() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public UsuarioDAO getUsuarioDAO() {
		// TODO Auto-generated method stub
		return new JPAUsuario(null, null);
	}

	@Override
	public TelefonoDAO getTelefonoDAO() {
		// TODO Auto-generated method stub
		return new JPATelefono(null, null);
	}

}
