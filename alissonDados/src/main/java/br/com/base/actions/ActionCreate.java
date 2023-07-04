package br.com.base.actions;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.base.constructor.Cliente;
import br.com.base.db.DAO.BancoDb;

public class ActionCreate {
	public void create(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String clienteNome = request.getParameter("name");
		String clienteCidade = request.getParameter("city");
		String clienteContato = request.getParameter("phone");
		clienteContato = clienteContato.replace("(", "").replace(")", "").replace("-", "").replace(" ", "");
		String clienteInsta = request.getParameter("insta");
		
		Cliente newCliente = new Cliente();
		newCliente.setName(clienteNome);
		newCliente.setCity(clienteCidade);
		newCliente.setPhone(clienteContato);
		newCliente.setInstagram(clienteInsta);
		
		BancoDb banco = new BancoDb();
		banco.addClient(newCliente);
		
		//chamar jsp que exibe um cliente
		RequestDispatcher rd = request.getRequestDispatcher("/clienteInfo.jsp");
		request.setAttribute("cliente", newCliente);
		
		rd.forward(request, response);
	}
}