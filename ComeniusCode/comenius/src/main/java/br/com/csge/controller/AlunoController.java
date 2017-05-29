package br.com.csge.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.csge.model.dao.UsuarioDao;
import br.com.csge.model.Aluno;


@WebServlet("/AlunoCtrl")
public class AlunoController extends HttpServlet {	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
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

		    UsuarioDao uDao = new UsuarioDao();		        
		    uDao.adicionar(aluno);		    
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/sucesso.jsp");
			dispatcher.forward(request, response);				
		}
			
	}
	
}


/*

String em data 
String formato, final String data
SimpleDateFormat(formato).parse(data);

Data em String
String formato, final Date data
SimpleDateFormat(formato).format(data);
* */

