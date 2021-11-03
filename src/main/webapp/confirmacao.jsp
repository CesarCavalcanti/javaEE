<%@page import="br.edu.infnet.model.domain.Aluno"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

	<%
		String nome = (String)request.getAttribute("nomeAluno");
	%>
	<div class= "container">
		<form action="Aluno" method="get" >
			<h3> Aluno <%=nome %> Foi Cadastrado com sucesso</h3>
			<button type="submit" class="btn btn-primary"value="confirmacao" name="acesso">Voltar</button>
		</form>
		<hr>
	
	</div>
	
	
</body>
</html>