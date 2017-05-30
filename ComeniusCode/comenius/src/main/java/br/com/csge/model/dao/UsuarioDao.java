package br.com.csge.model.dao;

import java.sql.*;
import br.com.csge.model.Usuario;
import br.com.csge.model.util.ConnectionFactory;

public class UsuarioDao {
	private Connection con;
	String sql;
	ResultSet rs;
	PreparedStatement p;
	Usuario u = new Usuario();
	
	
	public Usuario autenticar(Usuario uConsulta){
		con = ConnectionFactory.getConnection();
		sql = "Select * from usuario where email=? and senha=?";
		
			try {
				p = con.prepareStatement(sql);
				p.setString(1, uConsulta.getEmail());
				p.setString(2, uConsulta.getSenha());
				
				rs = p.executeQuery();
				if(rs.next()){
					u.setId(rs.getInt("idusuario"));
					u.setNome(rs.getString("nome"));
					u.setEmail(rs.getString("email"));
					u.setSenha(rs.getString("senha"));
					u.setTipo(rs.getInt("tipo"));
				
					return u;		
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		
		return null;
	}
	
	
	public Usuario adicionar(Usuario uAdd){
		
		Usuario u = new Usuario();
		
		return u;
		
	}


}
