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
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String paramId = request.getParameter("id");
		Integer id = Integer.valueOf(paramId);

		String clienteNome = request.getParameter("name");
		String clienteCidade = request.getParameter("city");
		String clienteContato = request.getParameter("phone");
		String clienteInsta = request.getParameter("insta");

		Cliente cliente = new Cliente();
		cliente.setId(id);
		cliente.setName(clienteNome);
		cliente.setCity(clienteCidade);
		cliente.setPhone(clienteContato);
		cliente.setInstagram(clienteInsta);

		BancoDb banco = new BancoDb();
		banco.updateCliente(cliente);

		List<Cliente> clientes = banco.getClientes();

		request.setAttribute("clientes", clientes);
		// chamar jsp de listagem apos concluir a edição
		RequestDispatcher rd = request.getRequestDispatcher("/listagem.jsp");
		rd.forward(request, response);
	}

}
