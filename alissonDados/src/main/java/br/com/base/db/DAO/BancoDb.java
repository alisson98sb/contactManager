package br.com.base.db.DAO;

import java.sql.Connection;
import java.sql.Statement;

import br.com.base.constructor.Cliente;

public class BancoDb {
	private static Integer id = 1;
	
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
}
