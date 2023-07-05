package br.com.base.actions;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.base.db.DAO.BancoDb;

public class ActionDelete {
	public String delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String paramId = request.getParameter("id");

		Integer id = Integer.valueOf(paramId);

		BancoDb banco = new BancoDb();
		banco.deleteCliente(id);

		return "servle?action=list";
	}
}
