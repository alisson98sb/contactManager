package br.com.base.actions;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.base.constructor.Cliente;
import br.com.base.constructor.Usuario;
import br.com.base.db.DAO.ClientesDb;

public class ActionList implements Acao{
	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ClientesDb db = new ClientesDb();
		
		HttpSession sessao = request.getSession();		
		Usuario user = (Usuario)sessao.getAttribute("usuarioLogado");
		
		List<Cliente> clientesLista = db.getClientes(user);
				
		// seta uma variavel clientes com a lista de clientes para passar ao jsp;
		request.setAttribute("clientes", clientesLista);

		return "/listagem.jsp";
		}

}
