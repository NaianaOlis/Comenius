package br.com.csge.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.csge.dao.UsuarioDAO;
import br.com.csge.model.Aluno;
import br.com.csge.model.Usuario;
import br.com.csge.util.ConnectionFactory;


@WebServlet("/AlunoCtrl")
public class AlunoController extends HttpServlet {	
	String acao = null;
   
	public AlunoController() {    	
    }	
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");		
		acao = request.getParameter("acao");
		
		if(acao.equalsIgnoreCase("alterar")){
									
		}else if(acao.equalsIgnoreCase("pesquisar")){
						
		}else if(acao.equalsIgnoreCase("cadastrar")){
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/cadastroAluno.jsp");
			dispatcher.forward(request, response);
		}else if(acao.equalsIgnoreCase("add")){
			doPost(request, response);				
		}		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if (acao.equalsIgnoreCase("add")){		
			Aluno aluno = new Aluno();
			
		    aluno.setNome(request.getParameter("nome_completo"));

		    AlunoDao alunoDao = new AlunoDao();		    
		    alunoDao.adiciona(aluno);		    
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/sucesso.jsp");
			dispatcher.forward(request, response);				
		}
			
	}
	
}
