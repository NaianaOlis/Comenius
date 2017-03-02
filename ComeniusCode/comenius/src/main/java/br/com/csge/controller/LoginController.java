package br.com.csge.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.csge.controller.jdbc.UsuarioDAO;
import br.com.csge.model.Usuario;

@SuppressWarnings("serial")
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
		// )Colocando dados em objeto usuário
		Usuario u = new Usuario();
		u.setEmail(email);
		u.setSenha(senha);

		// 3)Consultando se usuário existe no banco
		UsuarioDAO uDao = new UsuarioDAO();
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
		}

	}

}
