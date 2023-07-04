package br.com.base.actions;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.base.constructor.Cliente;
import br.com.base.db.DAO.BancoDb;

public class ActionList {
	public void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BancoDb db = new BancoDb();
		List<Cliente> clientesLista = db.getClientes();
		
		// seta uma variavel clientes com a lista de clientes para passar ao jsp;
		request.setAttribute("clientes", clientesLista);

		// chama o jsp da pagina de listagem
		RequestDispatcher rd = request.getRequestDispatcher("/listagem.jsp");
		rd.forward(request, response);
		}

}
