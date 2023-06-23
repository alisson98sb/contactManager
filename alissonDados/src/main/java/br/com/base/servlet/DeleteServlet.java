package br.com.base.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.base.db.Banco;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String paramId = request.getParameter("id");
		
		Integer id = Integer.valueOf(paramId);
		
		System.out.println(id);
		
		Banco banco = new Banco();
		banco.deleteCliente(id);
		
		System.out.println("TEste");
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/listagem");
		rd.forward(request, response);
	}

}
