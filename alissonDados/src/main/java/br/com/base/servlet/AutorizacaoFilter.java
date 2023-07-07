package br.com.base.servlet;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/servlet")
public class AutorizacaoFilter extends HttpFilter implements Filter {

	private static final long serialVersionUID = 1L;

	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		  
		
		
		String paramAction = request.getParameter("action");
		
		HttpSession sessao = request.getSession();		
		boolean usuarioNaoLogado = sessao.getAttribute("usuarioLogado") == null;
		boolean ehUmaPaginaProtegida = ! (paramAction.equals("Login") || paramAction.equals("LoginForm"));
		
		
		if(ehUmaPaginaProtegida && usuarioNaoLogado) {
			response.sendRedirect("servlet?action=LoginForm");
			return;
		}
		chain.doFilter(request, response);
	}

}
