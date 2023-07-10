package br.com.base.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.thoughtworks.xstream.XStream;

import br.com.base.constructor.Cliente;
import br.com.base.constructor.Usuario;
import br.com.base.db.DAO.ClientesDb;

@WebServlet("/empresas")
public class EmpresasService extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
//Exporta um json para o acesso da aplicação em outros dispositivos.
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession sessao = request.getSession();		
		Usuario user = (Usuario)sessao.getAttribute("usuarioLogado");

		
		ClientesDb db = new ClientesDb();
		List<Cliente> clientesLista = db.getClientes(user);
		
		/*
		 * 	Caso quisesse acessar as informaçoes da nossa aplicação recebendo um xml
		 * XStream xstream = new XStream(); //xstream.alias("cliente", Cliente.class);
		 * String xml = xstream.toXML(clientesLista);
		 * 
		 * response.setContentType("aplication/xml"); response.getWriter().print(xml);
		 */
		
		Gson gson = new Gson();
		String json = gson.toJson(clientesLista);

		response.setContentType("aplication/json");
		response.getWriter().print(json);
	}

}
