package ec.edu.ups.controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.dao.TelefonoDAO;
import ec.edu.ups.dao.UsuarioDAO;
import ec.edu.ups.modelo.Telefono;
import ec.edu.ups.modelo.Usuario;

/**
 * Servlet implementation class ListarTelefonos
 */
@WebServlet("/ListarTelefonos")
public class ListarTelefonos extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UsuarioDAO usuarioDao;
    private Usuario usuario;
    private TelefonoDAO telefonoDao;
    private Telefono telefono;
    private List<Telefono> listaTelefonos;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListarTelefonos() {
        telefonoDao = DAOFactory.getDaoFactory().getTelefonoDAO();
        telefono = new Telefono();
        
        usuarioDao = DAOFactory.getDaoFactory().getUsuarioDAO();
        usuario = new Usuario();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = null;
		try {
			usuario.setCedula(request.getParameter("cedula"));
			telefono.setUsuario(usuario);
			listaTelefonos = telefonoDao.find2(telefono);
			request.setAttribute("telefonos", listaTelefonos);
			
			url = "/JSPs/privado/colorlib-regform-4/pusuario.jsp";
			getServletContext().getRequestDispatcher(url).forward(request, response);
		} catch (Exception e) {
			
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
