package br.com.base.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.com.base.actions.Acao;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String paramAction = request.getParameter("action");
		
		String nomeDaClasse = "br.com.base.actions." + paramAction;

		String route = null;
		
		try {
			Class classe = Class.forName(nomeDaClasse);
			Acao acao = (Acao) classe.newInstance();
			route = acao.executa(request, response);
			
		} catch (Exception e) {
			throw new ServletException(e);
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(route);
		rd.forward(request, response);
		
	}

}
