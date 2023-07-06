package br.com.base.actions;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.base.db.DAO.ClientesDb;

public class ActionDelete implements Acao {
	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String paramId = request.getParameter("id");

		Integer id = Integer.valueOf(paramId);

		ClientesDb banco = new ClientesDb();
		banco.deleteCliente(id);

		return "servlet?action=ActionList";
	}
}
