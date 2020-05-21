package ec.edu.ups.mysql.jdbc;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import ec.edu.ups.dao.UsuarioDAO;
import ec.edu.ups.modelo.Telefono;
import ec.edu.ups.modelo.Usuario;

public class JDBCUsuarioDAO extends JDBCGenericDAO<Usuario, String> implements UsuarioDAO{

	@Override
	public void createTable() {
		// TODO Auto-generated method stub
		
		
	}

	@Override
	public void create(Usuario usuario) {
		// TODO Auto-generated method stub
		conexionUno.update("INSERT usuario VALUES ('" + usuario.getCedula() + "', '" 
				 + usuario.getNombre() + "', '"
				 + usuario.getApellido() + "', '"
				 + usuario.getCorreo() + "', '"
				 + usuario.getContrasenia() + "')");
		
		
	}

	@Override
	public Usuario read(String cedula) {
		// TODO Auto-generated method stub
		Usuario usuario = null;
		ResultSet rs = conexionUno.query("SELECT * FROM usuario WHERE id=" + usuario.getCedula());
		try {
			if (rs != null && rs.next()) {
				usuario = new Usuario(rs.getString("usu_cedula"),
									  rs.getString("usu_nombre"),
									  rs.getString("usu_apellido"),
									  rs.getString("usu_correo"),
									  rs.getString("usu_contrasenia"));
			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(">>>WARNING (JDBCCategoryDAO:read): " + e.getMessage());
		}
		return usuario;
	}

	@Override
	public void update(Usuario usuario) {
		// TODO Auto-generated method stub
		


	conexionUno.update("UPDATE usuario SET usu_nombre = '" + usuario.getNombre() +
											   "', usu_apellido = '"+ usuario.getApellido() + 
											   "', usu_correo = '"+ usuario.getCorreo() + 
											   "', usu_contrasenia = '"+ usuario.getContrasenia() + 
											   "' WHERE usu_cedula = " + usuario.getCedula());
		
	
	}

	@Override
	public void delete(Usuario usuario) {
		// TODO Auto-generated method stub
		conexionUno.update("DELETE FROM usuario WHERE usu_cedula = " + usuario.getCedula());
		
	}

	@Override
	public List<Usuario> find() {
		// TODO Auto-generated method stub
		List<Usuario> list = new ArrayList<Usuario>();
		ResultSet rs = conexionUno.query("SELECT * FROM usuario");
		try {
			while (rs.next()) {
				list.add(new Usuario(rs.getString("usu_cedula"),
									 rs.getString("usu_nombre"),
									 rs.getString("usu_apellido"),
									 rs.getString("usu_correo"),
									 rs.getString("usu_contrasenia")));
				
			}
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println(">>>WARNING (JDBCCategoryDAO:find): " + e.getMessage());
			
		}
		
		
		return list;

	}
	//int r = 0;
	@Override
	public int validar(Usuario usuario) {
		try {
			ResultSet rs = conexionUno.query("SELECT * FROM usuario,telefono  WHERE usu_correo = '"
					+ usuario.getCorreo() + "'AND usu_contrasenia = '" + usuario.getContrasenia() + "' AND usu_cedula = usuario_usu_cedula");
			if (rs != null && rs.next()) {
				return 1;
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println(">>>WARNING (JDBCCategoryDAO:find): " + e.getMessage());
			
		}
		return 0;
		}
		
	
	public Usuario buscarU(Usuario usuario) {
		
		
		ResultSet rs = conexionUno.query("SELECT * FROM usuario,telefono  WHERE usu_correo = '"
				+ usuario.getCorreo() + "'AND usu_contrasenia = '" + usuario.getContrasenia() + "' AND usu_cedula = usuario_usu_cedula");
		try {
			if (rs != null && rs.next()) {
				usuario = new Usuario(rs.getString("usu_cedula"),
						  rs.getString("usu_nombre"),
						  rs.getString("usu_apellido"),
						  rs.getString("usu_correo"),
						  rs.getString("usu_contrasenia"));
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(">>>WARNING (JDBCCategoryDAO:read): " + e.getMessage());
		}
		return usuario;
		
	}
	
	

	@Override
	public Telefono buscarT(String cedula, String correo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Telefono> buscarContacto(Usuario usuario) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public List<Usuario> buscarContacto2(Usuario usuario){
		List<Usuario> list = new ArrayList<Usuario>();
		ResultSet rs = conexionUno.query("SELECT *\r\n" + 
				"FROM usuario\r\n" + 
				"INNER JOIN telefono\r\n" + 
				"ON usu_cedula= usuario_usu_cedula\r\n" + 
				"WHERE usu_correo = '" + usuario.getCorreo()
				+ "' OR usu_cedula = '"
				+ usuario.getCedula()
				+ "' \r\n" + 
				"group by usu_cedula");
		try {
			while (rs.next()) {
				list.add(new Usuario(
						rs.getString("usu_cedula"),
						rs.getString("usu_nombre"),
						rs.getString("usu_apellido"),
						rs.getString("usu_correo"),
						rs.getString("usu_contrasenia")
						));
				
				
				
			}
			
                
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println(">>>WARNING (JDBCTelefonoDAO:find): " + e.getMessage());
		}
		
		
		return list;
		
	}

	@Override
	public List<Telefono> buscarContacto3(Telefono telefono) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Telefono> find2(Telefono telefono) {
		// TODO Auto-generated method stub
		return null;
	}

	
	

	

	
	

	

	

	
	
}
