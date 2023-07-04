package br.com.base.actions;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.base.db.DAO.BancoDb;

public class ActionDelete {
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String paramId = request.getParameter("id");

		Integer id = Integer.valueOf(paramId);

		BancoDb banco = new BancoDb();
		banco.deleteCliente(id);

		RequestDispatcher rd = request.getRequestDispatcher("/servelet?action=list");
		rd.forward(request, response);

	}
}
