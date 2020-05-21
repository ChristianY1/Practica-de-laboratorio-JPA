package ec.edu.ups.controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.dao.TelefonoDAO;
import ec.edu.ups.dao.UsuarioDAO;
import ec.edu.ups.modelo.Telefono;
import ec.edu.ups.modelo.Usuario;

/**
 * Servlet implementation class GenerarServlet
 */
@WebServlet("/GenerarServlet")
public class GenerarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UsuarioDAO usuarioDao;
	private Usuario usuario;
	private java.util.List<Usuario> lista2;
	
	private TelefonoDAO telefonoDao;
	private Telefono telefono;
	private java.util.List<Telefono> lista;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GenerarServlet() {
    	usuarioDao  = DAOFactory.getDaoFactory().getUsuarioDAO();
        usuario = new Usuario();
        
        telefonoDao = DAOFactory.getDaoFactory().getTelefonoDAO();
        telefono = new Telefono();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = null;
		try {
			usuario.setCedula(request.getParameter("cedula2"));
			java.util.List<Telefono> lista = telefonoDao.buscarContacto(usuario);
			java.util.List<Usuario> lista2 = usuarioDao.buscarContacto2(usuario);
			
			request.setAttribute("datosUsuario", lista2);
			request.setAttribute("datosTelefono",lista);
			
			url = "/JSPs/privado/colorlib-regform-4/modificar.jsp";
			request.getRequestDispatcher(url).forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
			String error = "usuario no encontrado";
			request.setAttribute("datosUsuario", error);
			request.setAttribute("datosTelefono", error);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
