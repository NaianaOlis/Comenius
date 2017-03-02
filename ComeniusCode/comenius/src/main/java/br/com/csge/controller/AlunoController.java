package br.com.csge.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.csge.controller.jdbc.UsuarioDAO;
import br.com.csge.model.Usuario;


@WebServlet("/alunoCtrl")
public class AlunoController extends HttpServlet {
	
    public AlunoController() {    	
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String acao = request.getParameter("acao");
		if(acao.equals("alterar")){
			
		}else if(acao.equals("pesquisar")){
			
		}else if(acao.equals("cadastrar")){
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/cadastroAluno.jsp");
			dispatcher.forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
}
