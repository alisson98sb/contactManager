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
 * Servlet implementation class CreateServlet
 */
@WebServlet("/adicionar")
public class CreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String clienteNome = request.getParameter("name");
		String clienteCidade = request.getParameter("city");
		String clienteContato = request.getParameter("phone");
		
		Cliente newCliente = new Cliente();
		newCliente.setName(clienteNome);
		newCliente.setCity(clienteCidade);
		newCliente.setPhone(clienteContato);
		
		BancoDb banco = new BancoDb();
		banco.addClient(newCliente);
		
		//chamar jsp que exibe um cliente
		RequestDispatcher rd = request.getRequestDispatcher("/clienteInfo.jsp");
		request.setAttribute("name", clienteNome);
		request.setAttribute("city", clienteCidade);
		request.setAttribute("phone", clienteContato);
		
		rd.forward(request, response);
	}

}
