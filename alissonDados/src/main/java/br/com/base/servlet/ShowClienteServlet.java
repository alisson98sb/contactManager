package br.com.base.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.base.constructor.Cliente;
import br.com.base.db.DAO.BancoDb;

/**
 * Servlet implementation class ShowClienteServlet
 */
@WebServlet("/cliente")
public class ShowClienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String paramId = request.getParameter("id");
		Integer id = Integer.valueOf(paramId);

		BancoDb banco = new BancoDb();
		Cliente cliente = banco.getCliente(id);

		String updating = request.getParameter("update");
		Integer isUpdating = Integer.valueOf(updating);

		if (isUpdating == 1) {
			request.setAttribute("id", cliente.getId());
			request.setAttribute("name", cliente.getName());
			request.setAttribute("city", cliente.getCity());
			request.setAttribute("phone", cliente.getPhone());
			request.setAttribute("insta", cliente.getInstagram());

			// chamar jsp de edição
			RequestDispatcher rd = request.getRequestDispatcher("/update.jsp");
			rd.forward(request, response);
		} else {

			// chamar jsp de edição
			RequestDispatcher rd = request.getRequestDispatcher("/clienteInfo.jsp");
			rd.forward(request, response);
		}

	}
}
