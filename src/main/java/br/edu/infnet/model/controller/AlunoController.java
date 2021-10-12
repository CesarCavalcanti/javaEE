package br.edu.infnet.model.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.infnet.model.domain.Aluno;

public class AlunoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AlunoController() {
        super();
 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Aluno aluno = new Aluno(request.getParameter("nome"),request.getParameter("email"));
		
		aluno.setDisciplinas(request.getParameterValues("disciplinas"));
		aluno.setEscolaridade(request.getParameter("escolaridade"));
		aluno.setRegiao(request.getParameter("regiao"));
		aluno.impressao();
		
		request.getRequestDispatcher("confirmacao.html").forward(request, response);
	}

}