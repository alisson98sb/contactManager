package br.com.base.actions;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.base.db.DAO.UsuariosDb;

public class CadastroUser implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String login = request.getParameter("user");
			String password = request.getParameter("password");
			
			
			UsuariosDb dbUser = new UsuariosDb();
			dbUser.setUser(login, password);				
			
			return "servlet?action=LoginForm";			
	}

}