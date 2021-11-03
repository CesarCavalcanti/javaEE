package br.edu.infnet.model.controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.infnet.model.domain.Aluno;
import br.edu.infnet.model.repository.AlunoRepository;

public class AlunoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
    public AlunoController() {
 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		if("confirmacao".equals(request.getParameter("acesso"))) {
			request.setAttribute("listaAlunos", AlunoRepository.obterLista());
			request.getRequestDispatcher("aluno/lista.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("aluno/cadastro.jsp").forward(request, response);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Aluno aluno = new Aluno(request.getParameter("nome"),request.getParameter("email"));
		
		aluno.setDisciplinas(request.getParameterValues("disciplinas"));
		aluno.setEscolaridade(request.getParameter("escolaridade"));
		aluno.setRegiao(request.getParameter("regiao"));
		aluno.setIdade(Integer.valueOf(request.getParameter("idade")));
		aluno.setMensalidade(Double.valueOf(request.getParameter("mensalidade")));
		
		AlunoRepository.incluir(aluno);
		
		
		request.setAttribute("nomeAluno", aluno.getNome());
		request.getRequestDispatcher("confirmacao.jsp").forward(request, response);
	}

}
