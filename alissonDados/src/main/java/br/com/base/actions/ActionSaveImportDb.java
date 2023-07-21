package br.com.base.actions;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.base.constructor.Cliente;
import br.com.base.db.DAO.ClientesDb;
import utils.mascara.formataImportTxt;

public class ActionSaveImportDb implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 String preview = request.getParameter("contatos"); 
		 List<Cliente> clientes = formataImportTxt.TxtFormatter(preview, request, response);
		 ClientesDb db = new ClientesDb();
			  
		 for (Cliente contato : clientes) {
			 db.addClient(contato);
		 }
		
		return "servlet?action=ActionList";
	}

}