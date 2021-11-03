<%@page import="java.util.List"%>
<%@page import="br.edu.infnet.model.domain.Aluno"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
		<%List<Aluno> alunos = (List<Aluno>)request.getAttribute("listaAlunos");%>
	
		<h4>Listagem de alunos (<%=alunos.size()%>): </h4>
		<form action="Aluno" method="get">
			<%if (alunos != null){ %>
				<div class="container">          
				  <table class="table">
				    <thead>
				      <tr>
				        <th>Nome</th>
				        <th>Email</th>
				      </tr>
				    </thead>
				    <%for (Aluno a: alunos) { %>
					    <tbody>
					      <tr>
					        <td><%=a.getNome() %></td>
					        <td><%=a.getEmail() %></td>
					      </tr>
					    </tbody>
					</table>
					<%}%>
				</div>
			<%}%>
			<button type="submit" class="btn btn-primary">Cadastrar Aluno</button>
		 </form>

</body>
</html>