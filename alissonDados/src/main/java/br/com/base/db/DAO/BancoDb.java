package br.com.base.db.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.base.constructor.Cliente;

public class BancoDb {
	private static Integer id = 1;
	
	public void updateCliente(Cliente newDatas) {
		Conexao conexao = new Conexao();
		Connection conn = conexao.getConnection();
		
		String sql = "UPDATE  projetousers SET name= '"+newDatas.getName()+"', city= '"+newDatas.getCity()+"', phone='"+newDatas.getPhone()+"' WHERE id=" 	+newDatas.getId()+ ";";
		//String sql2 ="Insert INTO projetousers VALUES ("+cliente.getId()+", '"+cliente.getName()+"','"+cliente.getCity()+"','"+cliente.getPhone()+"');";
		System.out.println(sql);
		try {
			Statement st = conn.createStatement();
			st.executeUpdate(sql);
		} catch (Exception e) {
			System.err.println("Erro de conexão2");
		}
		
	}
	
	
	public Cliente getCliente(Integer clientId) {
		Conexao conexao = new Conexao();
		Connection conn = conexao.getConnection();
		Cliente cliente = new Cliente();
		
		
		String sql = "SELECT * FROM projetousers  WHERE id = "+clientId+";";
		ResultSet res;
		try {
			System.out.println(clientId);
			Statement st = conn.createStatement();
			res = st.executeQuery(sql);
			
			while ( res.next() ) {
				
				int cId = res.getInt(1);
				cliente.setId(cId);
				
				String cName = res.getString(2);
				cliente.setName(cName);
				
				String cCity = res.getString(3);
				cliente.setCity(cCity);
				
				String cPhone = res.getString(4);
				cliente.setPhone(cPhone);
				
			}
			System.out.println(cliente);
						
			
			return cliente;
			
			
		} catch (Exception e) {
			System.err.println("Erro de conexão");
		}
		
		return null;
	}
	
	public void deleteCliente(Integer clientId) {
		Conexao conexao = new Conexao();
		Connection conn = conexao.getConnection();
		
		String sql = "DELETE FROM projetousers WHERE id ="+clientId+";";
		
		try {
			Statement st = conn.createStatement();
			st.executeUpdate(sql);
		} catch (Exception e) {
			System.err.println("Erro de conexão");
		}
	}
	
	public String addClient(Cliente cliente) {
		cliente.setId(id++);
		
		Conexao conexao = new Conexao();
		Connection conn = conexao.getConnection();
		
		String sql = "Insert INTO projetousers VALUES ("+cliente.getId()+", '"+cliente.getName()+"','"+cliente.getCity()+"','"+cliente.getPhone()+"');";
		
		try {
			Statement st = conn.createStatement();
			st.executeUpdate(sql);
			
		} catch (Exception e) {
			System.err.println("Erro de conexão");
			return sql;
		}
		return "Gravado com sucesso";
	}
	
	public  List<Cliente> getClientes() {
		Conexao conexao = new Conexao();
		Connection conn = conexao.getConnection();
		
		List<Cliente> cliente = new ArrayList<>();
		
		String sql = "select id, name, city, phone from projetousers  ORDER BY name;";
		ResultSet lista;
		try {
			Statement st = conn.createStatement();
			lista = st.executeQuery(sql);
			
			while ( lista.next() ) {
				Cliente cliente1 = new Cliente();
				
				int cId = lista.getInt(1);
				cliente1.setId(cId);
				
				String cName = lista.getString(2);
				cliente1.setName(cName);
				
				String cCity = lista.getString(3);
				cliente1.setCity(cCity);
				
				String cPhone = lista.getString(4);
				cliente1.setPhone(cPhone);
				
				cliente.add(cliente1);
				
//				System.out.println("Usuario id : " + cliente1.getId() + " , name : " + cliente1.getName() + " , city : " + cliente1.getCity() + " , phone : " + cliente1.getPhone());
			}
			
			return cliente;
			
		} catch (Exception e) {
			System.err.println("Erro de conexão");
			return null;
		}

	}
	
}
