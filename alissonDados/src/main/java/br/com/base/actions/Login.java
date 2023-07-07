package br.com.base.actions;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.base.constructor.Usuario;
import br.com.base.db.DAO.UsuariosDb;

public class Login implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String login = request.getParameter("user");
			String password = request.getParameter("password");
			
			UsuariosDb dbUser = new UsuariosDb();
			Usuario user = dbUser.getUser(login, password);				
			
			if(user.getId() != 0) {
				HttpSession sessao = request.getSession();
				sessao.setAttribute("usuarioLogado", user);
				return "servlet?action=ActionList";
			} else {
				return "servlet?action=LoginForm";
			}
					
	}

}
