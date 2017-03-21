package br.com.csge.controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.csge.dao.UsuarioDao;
import br.com.csge.model.Usuario;

@WebServlet("/login")
public class LoginController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession sessao = request.getSession(false);
		if(sessao != null){
			sessao.invalidate();
		}
		response.sendRedirect("login.jsp");
		//LOGOUT
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {	
		
		// 1)capturando dados da tela
		String email = request.getParameter("inputEmail");
		String senha = request.getParameter("inputPassword");
  
		//algoritmo de criptografia SHA-2 
        MessageDigest algorithm = null;
		try {
			algorithm = MessageDigest.getInstance("SHA-256");
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		byte messageDigest[] = algorithm.digest(senha.getBytes("UTF-8"));
		 
		//transforma em hexadecimal
		StringBuilder hexString = new StringBuilder();
		for (byte b : messageDigest) {
		  hexString.append(String.format("%02X", 0xFF & b));
		}
		String hexaSenha = hexString.toString();
			
		// )Colocando dados em objeto usuário
		Usuario u = new Usuario();
		u.setEmail(email);
		u.setSenha(hexaSenha);

		// 3)Consultando se usuário existe no banco
		UsuarioDao uDao = new UsuarioDao();
		Usuario uAutenticado = uDao.autenticar(u);

		// 4)Verificando se o usuário foi encontrado
		if (uAutenticado != null) {
			// 5)Colocando Usuário na sessão
			HttpSession sessao = request.getSession();
			sessao.setAttribute("uAutenticado", uAutenticado);

			// Definindo tempo para encerrar sessão caso esteja inativa
			// 60 segundos = 1 min
			// 15 min = 60*15 = 900 segundos
			sessao.setMaxInactiveInterval(900);

			// 6)Redirecionando usuário para a tela principal
			//se tecadm... se professor... 
			request.getRequestDispatcher("WEB-INF/indexTecAdm.jsp").forward(request, response);
		}else{
			System.out.println("senha incorreta");
			response.sendRedirect("login.jsp");
		}

	}

}
