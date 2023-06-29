package br.com.base.db.DAO;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JOptionPane;

public class Conexao {
	private final String url = "jdbc:postgresql://localhost/projeto-user";
	private final String usuario = "postgres";
	private final String senha = "senha";
	
	
	public Connection getConnection() {
		Connection result = null;
		
		try {
			Class.forName("org.postgresql.Driver");
			result = DriverManager.getConnection(url, usuario, senha);
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			JOptionPane.showMessageDialog(null, e, "Erroooou", JOptionPane.ERROR_MESSAGE);
		}
		return result;
	}
}