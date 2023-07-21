package br.com.base.actions;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.base.constructor.Cliente;
import utils.mascara.formataImportTxt;

public class ShowImportXml implements Acao {
	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		  String preview = request.getParameter("contatos");
		  
		  List<Cliente> cliente = formataImportTxt.TxtFormatter(preview, request, response);
		  
		  request.setAttribute("clientes", cliente);
		  request.setAttribute("preview", preview);

		return "/showXmlImported.jsp";
	}
}
