<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tela de login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

	<%
		String mensagem = (String) request.getAttribute("msg");

	%>
	
	<div class="container">
	  <h2>Tela de login</h2>
	  
	  
	  
	  	<%if(mensagem != null) {%>
		  	<div class="alert alert-danger">
	   			<strong>Alerta!</strong> <%= mensagem%>
	  		</div>
	  	<%}%>
	  	
	 <form action="Acesso" method="post">
	  
	    <div class="form-group">
	      	<label>Email:</label>
	      	<input type="email" class="form-control"  placeholder="Entre com email" name="email">
	    </div>
	    
	    <div class="form-group">
		     <label>Password:</label>
		     <input type="password" class="form-control"  placeholder="Entre com a senha" name="senha">
	    </div>
	    
	    <div class="form-group form-check">
	      <label class="form-check-label">
	        <input class="form-check-input" type="checkbox" name="lembrar"> Lembrar-se
	      </label>
	    </div>
	    
	    <button type="submit" class="btn btn-primary">Entrar</button>
	    
	  </form>
</div>
</body>
</html>