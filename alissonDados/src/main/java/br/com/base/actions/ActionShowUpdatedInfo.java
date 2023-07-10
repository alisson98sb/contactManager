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

public class ActionShowUpdatedInfo implements Acao {
	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//dados do usuário logado
		HttpSession sessao = request.getSession();		
		Usuario user = (Usuario)sessao.getAttribute("usuarioLogado");

		String paramId = request.getParameter("id");
		Integer id = Integer.valueOf(paramId);

		String clienteNome = request.getParameter("name");
		String clienteCidade = request.getParameter("city");
		String clienteContato = request.getParameter("phone");
		clienteContato = clienteContato.replace("(", "").replace(")", "").replace("-", "").replace(" ", "");
		String clienteInsta = request.getParameter("insta");
		

		Cliente cliente = new Cliente();
		cliente.setId(id);
		cliente.setName(clienteNome);
		cliente.setCity(clienteCidade);
		cliente.setPhone(clienteContato);
		cliente.setInstagram(clienteInsta);

		ClientesDb banco = new ClientesDb();
		banco.updateCliente(cliente);

		List<Cliente> clientes = banco.getClientes(user);

		request.setAttribute("clientes", clientes);
		
		return "/servlet?action=ActionList";
		
	}
}
