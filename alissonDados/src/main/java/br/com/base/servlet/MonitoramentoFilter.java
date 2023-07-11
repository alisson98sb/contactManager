package br.com.base.servlet;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/servlet")
public class MonitoramentoFilter implements Filter{
//Não está em uso, apenas para exemplo de como funciona a camada de servlet
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		long antes = System.currentTimeMillis();
		
		//executa aplicação
		chain.doFilter(request, response);
		
		long depois = System.currentTimeMillis();
	}

}
