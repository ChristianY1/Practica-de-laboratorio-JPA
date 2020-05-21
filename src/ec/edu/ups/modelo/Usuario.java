package ec.edu.ups.modelo;

import java.io.Serializable;

public class Usuario implements Serializable {
	
	public static final long serialVersioNuid = 1L;
	
	private String cedula;
	private String nombre;
	private String apellido;
	private String correo;
	private String contrasenia;
	private Telefono telefono;
	
	
	
	public Telefono getTelefono() {
		return telefono;
	}

	public void setTelefono(Telefono telefono) {
		this.telefono = telefono;
	}

	public Usuario() {
		
	}
	
	public Usuario(String cedula, String nombre, String apellido, String correo, String contrasenia) {
		super();
		this.cedula = cedula;
		this.nombre = nombre;
		this.apellido = apellido;
		this.correo = correo;
		this.contrasenia = contrasenia;
	}

	public String getCedula() {
		return cedula;
	}

	public void setCedula(String cedula) {
		this.cedula = cedula;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getContrasenia() {
		return contrasenia;
	}

	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}

	
	
	
	

}
