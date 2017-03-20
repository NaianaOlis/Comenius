package br.com.csge.dao;

import java.sql.*;
import java.util.*;

import br.com.csge.model.Usuario;
import br.com.csge.util.ConnectionFactory;

public class UsuarioDAO {
	private Connection con = ConnectionFactory.getConnection();	
	
	public Usuario autenticar(Usuario uConsulta){
		String sql = "Select * from usuario where email=? and senha=?";
		try (PreparedStatement p = con.prepareStatement(sql)){
			p.setString(1, uConsulta.getEmail());
			p.setString(2, uConsulta.getSenha());
			
			ResultSet rs = p.executeQuery();
			if(rs.next()){
				Usuario u = new Usuario();
			
				u.setId(rs.getInt("idusuario"));
				u.setNome(rs.getString("nome"));
				u.setEmail(rs.getString("email"));
				u.setSenha(rs.getString("senha"));
			
				return u;		
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}


}
