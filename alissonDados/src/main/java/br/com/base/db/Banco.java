package br.com.base.db;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import br.com.base.constructor.Cliente;

public class Banco {
	public static List<Cliente> clientesLista = new ArrayList<>();
//	private static List<Cliente> clienteLista = new ArrayList<>();
	private static Integer id = 1;
	
	static {
		Cliente cliente1 = new Cliente();
		cliente1.setId(id++);
		cliente1.setName("Alisson Santana");
		cliente1.setCity("Bauru-sp");
		cliente1.setPhone("44991770106");
		
		clientesLista.add(cliente1);
	}
	
	public List<Cliente> getClientes(){
		return Banco.clientesLista;
	}
	
	public Cliente getCliente(Integer paramId) {
		for( Cliente cliente : clientesLista) {
			if(cliente.getId() == paramId) {
				return cliente;
			}
		}
		return null;
	}
	
	public void setClientes(Cliente cliente) {
		cliente.setId(id++);
		Banco.clientesLista.add(cliente);
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
	
	public Cliente updateCliente(Cliente cliente) {
		Cliente oldCliente = this.getCliente(cliente.getId());

		oldCliente.setName(cliente.getName());
		oldCliente.setCity(cliente.getCity());
		oldCliente.setPhone(cliente.getPhone());
		
		return oldCliente;
	}
	

}
