package br.com.base.db;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import br.com.base.constructor.Cliente;

public class Banco {
	public static List<Cliente> clientesLista = new ArrayList<>();

	private static Integer id = 1;
	
	static {
		Cliente cliente1 = new Cliente();

		cliente1.setName("Alisson Santana");
		cliente1.setCity("Bauru-sp");
		cliente1.setPhone("44991770106");
		
		clientesLista.add(cliente1);
	}

	
	public Cliente updateCliente(Cliente cliente) {
		Cliente oldCliente = this.getCliente(cliente.getId());

		oldCliente.setName(cliente.getName());
		oldCliente.setCity(cliente.getCity());
		oldCliente.setPhone(cliente.getPhone());
		
		return oldCliente;
	}
	

	//feito
	public Cliente getCliente(Integer paramId) {
		for( Cliente cliente : clientesLista) {
			if(cliente.getId() == paramId) {
				return cliente;
			}
		}
		return null;
	}
	
	public void deleteCliente(Integer clienteId) {
		Iterator<Cliente> it = clientesLista.iterator();
		while(it.hasNext()) {
			Cliente cliente = it.next();
			
			if(cliente.getId() == clienteId) {
				it.remove();
			}
		}
		
	}
	
	public List<Cliente> getClientes(){
		return Banco.clientesLista;
	}

	public void setClientes(Cliente cliente) {

		Banco.clientesLista.add(cliente);
	}
}
