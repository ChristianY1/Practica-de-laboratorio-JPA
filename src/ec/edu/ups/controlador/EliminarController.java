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
 * Servlet implementation class EliminarController
 */
@WebServlet("/EliminarController")
public class EliminarController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UsuarioDAO usuarioDao;
	private Usuario usuario;
	private TelefonoDAO telefonoDao;
	private Telefono telefono;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EliminarController() {
    	usuarioDao = DAOFactory.getDaoFactory().getUsuarioDAO();
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
			//usuario.setCedula(request.getParameter("cedula"));
			telefono.setCodigo(Integer.parseInt(request.getParameter("codigo")));
			telefono.setNumero(request.getParameter("numero2"));
			telefono.setTipo(request.getParameter("tipo2"));
			telefono.setOperadora(request.getParameter("operadora2"));
			//telefono.setUsuario(usuario);
			
			telefonoDao.delete(telefono);
			
			url = "/JSPs/privado/colorlib-regform-4/pusuario.jsp";
			request.getRequestDispatcher(url).forward(request, response);
		} catch (Exception e) {
			// TODO: handle exception
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
