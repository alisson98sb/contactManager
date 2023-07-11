package br.com.base.actions;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.base.constructor.Cliente;
import br.com.base.db.DAO.ClientesDb;
import utils.mascara.Mascaras;

public class ActionUpdateClienteForm implements Acao {
	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String paramId = request.getParameter("id");
		Integer id = Integer.valueOf(paramId);

		ClientesDb banco = new ClientesDb();
		Cliente cliente = banco.getCliente(id);
		
		//Exibir no formato (##) #####-####
		String formatedPhone = Mascaras.mascPhone("(##) #####-####", cliente.getPhone());

		request.setAttribute("id", cliente.getId());
		request.setAttribute("name", cliente.getName());
		request.setAttribute("city", cliente.getCity());
		request.setAttribute("phone", formatedPhone);
		request.setAttribute("insta", cliente.getInstagram());

		return "/update.jsp";
	
	}
}
