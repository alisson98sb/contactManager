package br.com.base.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.base.actions.ActionCreate;
import br.com.base.actions.ActionDelete;
import br.com.base.actions.ActionList;
import br.com.base.actions.ActionShowCliente;
import br.com.base.actions.ActionUpdate;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String paramAction = request.getParameter("action");
		System.out.println(paramAction);
		
		String route = null;
		
		if(paramAction.equals("list")) {
			
			ActionList listarCliente = new ActionList();
			route = listarCliente.listar(request, response);
		} else if(paramAction.equals("cliente")) {
			
			ActionShowCliente clienteServlet = new ActionShowCliente();
			route = clienteServlet.show(request, response);
		} else if (paramAction.equals("create")) {
			
			ActionCreate createServlet = new ActionCreate();
			route = createServlet.create(request, response);
					
		} else if(paramAction.equals("delete")) {
			
			ActionDelete removeServet = new ActionDelete();
			route = removeServet.delete(request, response);
		} else if (paramAction.equals("update")) {
			
			ActionUpdate updateServlet = new ActionUpdate();
			route = updateServlet.update(request, response);
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(route);
		rd.forward(request, response);
		
	}

}
