package br.com.base.actions;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.base.constructor.Cliente;
import br.com.base.db.DAO.BancoDb;

public class ActionShowCliente implements Acao {
	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String paramId = request.getParameter("id");
		Integer id = Integer.valueOf(paramId);

		BancoDb banco = new BancoDb();
		Cliente cliente = banco.getCliente(id);

		String updating = request.getParameter("update");
		Integer isUpdating = Integer.valueOf(updating);

		if (isUpdating == 1) {
			request.setAttribute("id", cliente.getId());
			request.setAttribute("name", cliente.getName());
			request.setAttribute("city", cliente.getCity());
			request.setAttribute("phone", cliente.getPhone());
			request.setAttribute("insta", cliente.getInstagram());

			return "/update.jsp";
		} else {

			return "/clienteInfo.jsp";
		}
	}
}
