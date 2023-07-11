package br.com.base.db.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import br.com.base.constructor.Usuario;

public class UsuariosDb {
	private int generateId() {
		Conexao conexao = new Conexao();
		Connection conn = conexao.getConnection();
		
		String sql = "SELECT MAX(id) FROM projetousers;";
		
		ResultSet teste; 
		try {
			Statement st = conn.createStatement();
			teste = st.executeQuery(sql);
			while (teste.next()) {
				
			int id = teste.getInt(1);
			
			return id;
			
			}
			
		} catch (Exception e) {
			System.err.println("Erro de conexão ADDcLIENTE");
		}
		
		return 0;
	}
	
	public Usuario getUser(String login, String senha) {
		Conexao conexao = new Conexao();
		Connection conn = conexao.getConnection();
		Usuario usuario = new Usuario();
		
		String sql = "SELECT * FROM projetousers  WHERE login = '" + login + "' and password = '"+ senha +"';";

		ResultSet res;
		try {
			Statement st = conn.createStatement();
			res = st.executeQuery(sql);

			while (res.next()) {

				int uId = res.getInt(1);
				usuario.setId(uId);
				
				String uLogin = res.getString(2);
				usuario.setLogin(uLogin);
				
				String uPassword = res.getString(3);
				usuario.setSenha(uPassword);
				
			}

			return usuario;

		} catch (Exception e) {
			System.err.println("Erro de conexão");
		}

		return null;
	}

	public Usuario setUser(String login, String password) {
		Conexao conexao = new Conexao();
		Connection conn = conexao.getConnection();
		
		int id = this.generateId();
		id++;		
		
		String sql = "INSERT INTO projetousers VALUES ("+ id +", '"+login+"', '"+password+"');";

		try {
			Statement st = conn.createStatement();
			st.executeUpdate(sql);
			
		} catch (Exception e) {
			System.err.println("Erro de conexão ADDcLIENTE");
		}

		return null;
	}
}
