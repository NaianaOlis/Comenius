package br.com.csge.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.csge.model.dao.UsuarioDao;
import br.com.csge.model.Usuario;

@WebServlet("/UserCtrl")
public class UserController extends HttpServlet {

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
  
		Usuario uAutenticado = Autenticar(email, senha);		
		// Verifica se o usuário foi encontrado, coloca usuario na sessão. Define tempo para encerrar sessão caso esteja inativa - 15 min em segundos.Redirecionando usuário para a tela principal
		if (uAutenticado != null) {
			HttpSession sessao = request.getSession();
			sessao.setAttribute("uAutenticado", uAutenticado);
			sessao.setMaxInactiveInterval(900);
			Integer tipo = uAutenticado.getTipo();
			if(tipo == 0){
				request.getRequestDispatcher("WEB-INF/indexTecAdm.jsp").forward(request, response);
			}else if(tipo == 1){
				
			}else if(tipo == 2){
				
			}
		}else{
			System.out.println("senha incorreta");
			response.sendRedirect("login.jsp");
		}
	}

	private Usuario Autenticar(String email, String senha) {	
		Usuario uAutenticado = new Usuario();
		//algoritmo de criptografia SHA-2 
        MessageDigest algorithm = null;
		try {
			algorithm = MessageDigest.getInstance("SHA-256");
			byte messageDigest[];
			messageDigest = algorithm.digest(senha.getBytes("UTF-8"));		
		 
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
			uAutenticado = uDao.autenticar(u);
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return uAutenticado;
		
	}

}
