package utils.mascara;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import br.com.base.constructor.Cliente;
import br.com.base.constructor.Usuario;

public class formataImportTxt {
	
    public static List<Cliente> TxtFormatter(String preview, ServletRequest servletRequest, ServletResponse servletResponse) {
    	
    	HttpServletRequest request = (HttpServletRequest) servletRequest;
		/* HttpServletResponse response = (HttpServletResponse) servletResponse; */
		 
        
    	 String[] contatos = preview.split(";");
		  
		  List<Cliente> cliente = new ArrayList<>();

		  HttpSession sessao = request.getSession();		
		  Usuario user = (Usuario)sessao.getAttribute("usuarioLogado");
		  
		  for (String contato : contatos) {
			  Cliente cliente1 = new Cliente();
			  cliente1.setName(contato.split(",")[0].trim());
			  
			  cliente1.setCity(contato.split(",")[1].trim());
			  
			  cliente1.setPhone(contato.split(",")[2].replace("(", "").replace(")", "").replace("-", "").replace(" ", "").trim());
			  	
			  if(contato.split(",").length > 3) {
				  cliente1.setInstagram(contato.split(",")[3].trim());
			  }
			  
			  cliente1.setUser_id(user.getId());
			  
			  cliente.add(cliente1);
		  }
		  
    	return cliente;
    }
}


