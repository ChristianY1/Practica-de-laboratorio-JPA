package ec.edu.ups.mysql.jdbc;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import ec.edu.ups.dao.TelefonoDAO;
import ec.edu.ups.modelo.Telefono;
import ec.edu.ups.modelo.Usuario;

public class JDBCTelefonoDAO extends JDBCGenericDAO<Telefono, Integer> implements TelefonoDAO{

	@Override
	public void createTable() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void create(Telefono telefono) {
		// TODO Auto-generated method stub
		conexionUno.update("INSERT Telefono VALUES (" + telefono.getCodigo() +", '"
													  + telefono.getNumero() + "', '"
													  + telefono.getTipo() + "', '"
													  + telefono.getOperadora() + "', '"
													  + telefono.getUsuario().getCedula() + "')");
	}

	@Override
	public Telefono read(Integer id) {
		// TODO Auto-generated method stub
		Telefono telefono = null;
		ResultSet rsTelefono = conexionUno.query("SELECT * FROM Telefono WHERE tel_codigo=" + id);
		try {
			if (rsTelefono != null && rsTelefono.next()) {
				telefono = new Telefono(rsTelefono.getInt("tel_codigo"),
										 rsTelefono.getString("tel_numero"),
										 rsTelefono.getString("tel_tipo"),
										 rsTelefono.getString("tel_operadora"));
				ResultSet rsUser = conexionDos.query("SELECT * FROM usuario WHERE usu_cedula=" + rsTelefono.getString("usuario_usu_cedula"));
			if (rsUser != null && rsUser.next()) {
				Usuario user = new Usuario(rsUser.getString("usu_cedula"),
											rsUser.getString("usu_nombre"),
											rsUser.getString("usu_apellido"),
											rsUser.getString("usu_correo"),
											rsUser.getString("usu_contrasenia"));
				telefono.setUsuario(user);
			}
				
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println(">>>WARNING (JDBCUserDetailDAO:read): " + e.getMessage());
		}
		if (telefono == null) {
			return telefono;
		}
		return null;
	}

	@Override
	public void update(Telefono telefono) {
		// TODO Auto-generated method stub
		conexionDos.update("UPDATE Telefono SET tel_codigo = '" + telefono.getCodigo() +
												"', tel_numero = '"  + telefono.getNumero() +
												"', tel_tipo = '"  + telefono.getTipo() + 
												"', tel_operadora = '" + telefono.getOperadora() + 
												"' WHERE tel_codigo =" + telefono.getCodigo() );
		
	}

	@Override
	public void delete(Telefono telefono) {
		// TODO Auto-generated method stub
		conexionUno.update("DELETE FROM Telefono WHERE tel_codigo = " + telefono.getCodigo());
		
	}

	@Override
	public List<Telefono> find() {
		// TODO Auto-generated method stub
		List<Telefono> list = new ArrayList<Telefono>();
		ResultSet rs = conexionDos.query("SELECT * FROM usuario,telefono WHERE usu_cedula = usuario_usu_cedula ORDER BY FIELD (tel_codigo,'1') DESC");
		try {
			while (rs.next()) {
				list.add(new Telefono(rs.getInt("tel_codigo"),
									  rs.getString("tel_numero"),
									  rs.getString("tel_tipo"),
									  rs.getString("tel_operadora")));			
				
			}
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println(">>>WARNING (JDBCTelefonoDAO:find): " + e.getMessage());
		}
		return list;
	}

	@Override
	public int validar(Usuario usuario) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Usuario buscarU(Usuario usuario) {
		// TODO Auto-generated method stub
		return usuario;
	}

	@Override
	public Telefono buscarT(String correo, String pass) {
		Telefono telefono = null;
		ResultSet rs = conexionUno.query("SELECT * FROM usuario,telefono  WHERE usu_correo = '"
				+ correo + "'AND usu_contrasenia = '" + pass + "' AND usu_cedula = usuario_usu_cedula");
		try {
			if (rs != null && rs.next()) {
				telefono = new Telefono(
						rs.getInt("tel_codigo"),
						rs.getString("tel_numero"),
						rs.getString("tel_tipo"),
						rs.getString("tel_operadora")
						);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(">>>WARNING (JDBCCategoryDAO:read): " + e.getMessage());
		}
		return telefono;
	}

	public List<Telefono> buscarContacto(Usuario usuario) {
		// TODO Auto-generated method stub
		List<Telefono> list = new ArrayList<Telefono>();
		List<Usuario> list2 = new ArrayList<Usuario>();
		List<Serializable> newList = null;
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
				list.add(new Telefono(rs.getInt("tel_codigo"),
						 rs.getString("tel_numero"),
						 rs.getString("tel_tipo"),
						 rs.getString("tel_operadora")));
				
				
				
			}
			
                
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println(">>>WARNING (JDBCTelefonoDAO:find): " + e.getMessage());
		}
		return list;
	}

	
	

	public List<Telefono> listar(Usuario usuario){
		return null;
		
	}

	@Override
	public List<Usuario> buscarContacto2(Usuario usuario) {
		// TODO Auto-generated method stub
		return null;
	}

	
	public List<Telefono> buscarContacto3(Telefono telefono){
		List<Telefono> list = new ArrayList<Telefono>();
		ResultSet rs = conexionDos.query("SELECT * FROM usuario,telefono WHERE usu_cedula =' "
				+ telefono.getUsuario().getCedula()
				+ "'");
		try {
			while (rs.next()) {
				list.add(new Telefono(rs.getInt("tel_codigo"),
									  rs.getString("tel_numero"),
									  rs.getString("tel_tipo"),
									  rs.getString("tel_operadora")));			
				
			}
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println(">>>WARNING (JDBCTelefonoDAO:find): " + e.getMessage());
		}
		return list;
		
	}
	public List<Telefono> find2(Telefono telefono) {
		// TODO Auto-generated method stub
		List<Telefono> list = new ArrayList<Telefono>();
		
		ResultSet rs = conexionDos.query("SELECT * FROM usuario,telefono WHERE usu_cedula = usuario_usu_cedula AND usu_cedula= '" +telefono.getUsuario().getCedula()+"'");
		try {
			while (rs.next()) {
				list.add(new Telefono(rs.getInt("tel_codigo"),
									  rs.getString("tel_numero"),
									  rs.getString("tel_tipo"),
									  rs.getString("tel_operadora")));			
				
			}
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println(">>>WARNING (JDBCTelefonoDAO:find): " + e.getMessage());
		}
		return list;
	}

	

	

	

	

	

}
