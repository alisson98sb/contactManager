package br.com.base.actions;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.base.constructor.Cliente;
import br.com.base.constructor.Usuario;
import br.com.base.db.DAO.ClientesDb;

public class ActionShowCreatedInfo implements Acao {
	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String clienteNome = request.getParameter("name");
		String clienteCidade = request.getParameter("city");
		String clienteContato = request.getParameter("phone");
		clienteContato = clienteContato.replace("(", "").replace(")", "").replace("-", "").replace(" ", "");
		String clienteInsta = request.getParameter("insta");
		
		HttpSession sessao = request.getSession();		
		Usuario user = (Usuario)sessao.getAttribute("usuarioLogado");
		
		
		Cliente newCliente = new Cliente();
		newCliente.setName(clienteNome);
		newCliente.setCity(clienteCidade);
		newCliente.setPhone(clienteContato);
		newCliente.setInstagram(clienteInsta);
		newCliente.setUser_id(user.getId());
		
		ClientesDb banco = new ClientesDb();
		banco.addClient(newCliente);
		
		request.setAttribute("cliente", newCliente);

		return "/clienteInfo.jsp";
	}
}
