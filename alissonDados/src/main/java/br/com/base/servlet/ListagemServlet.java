package br.com.base.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.com.base.constructor.Cliente;
import br.com.base.db.DAO.BancoDb;

/**
 * Servlet implementation class ListagemServlet
 */
@WebServlet("/listagem")
public class ListagemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		BancoDb db = new BancoDb();
		List<Cliente> clientesLista = db.getClientes();

		//seta uma variavel clientes com a lista de clientes para passar ao jsp;
		request.setAttribute("clientes", clientesLista);
		
		//chama o jsp da pagina home
		RequestDispatcher rd = request.getRequestDispatcher("/listagem.jsp");
		rd.forward(request, response);
	}
}
