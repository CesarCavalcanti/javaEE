<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

	<div class="container">
		<form action="Aluno" method="post">
		
			<div class="form-group">
      			<label style = "font-size:x-large;">Nome:</label>
		      	<input type="text" class="form-control"  placeholder="Entre com seu nome" name="nome" value="Cesar de sena">
		    </div>
	
			<div class="form-group">
      			<label style = "font-size:x-large;">E-mail:</label>
		      	<input type="email" class="form-control"  placeholder="Entre com seu e-mail" name="email" value="bangjogos1@gmail.com">
		    </div>
		    
		    <div class="form-group">
      			<label style = "font-size:x-large;">Idade:</label>
		      	<input type="text" class="form-control"  placeholder="Entre com sua idade" name="idade" value="23">
		    </div>
		    
		    <div class="form-group">
      			<label style = "font-size:x-large;">Mensalidade:</label>
		      	<input type="text" class="form-control"  placeholder="Entre com sua mensalidade" name="mensalidade" value="400">
		    </div>
		
			<label style = "font-size:x-large;">Escolaridade:</label>
			<div class="form-check">
			  <label class="form-check-label">
			    <input checked type="radio" name="escolaridade" value="G" class="form-check-input"> Graduação
			  </label>
			</div>
			
			<div class="form-check">
			  <label class="form-check-label">
			    <input type="radio" name="escolaridade" value="E" class="form-check-input"> Especialização
			  </label>
			</div>
			
			<div class="form-check">
			  <label class="form-check-label">
			    <input type="radio" name="escolaridade" value="M" class="form-check-input"> Mestrado
			  </label>
			</div>
			
			<div class="form-check">
			  <label class="form-check-label">
			    <input type="radio" name="escolaridade" value="D" class="form-check-input"> Doutorado
			  </label>
			</div>
		
			<label style = "font-size:x-large">Disciplinas:</label>
			<div class="form-check">
			  <label class="form-check-label">
			    <input checked class="form-check-input" type="checkbox" name="disciplinas" value="POO"> Orientação a objetos
			  </label>
			</div>
			
			<div class="form-check">
			  <label class="form-check-label">
			    <input checked class="form-check-input" type="checkbox" name="disciplinas" value="FUJ"> Fundamentos Java
			  </label>
			</div>
			
			<div class="form-check">
			  <label class="form-check-label">
			    <input class="form-check-input" type="checkbox" name="disciplinas" value="JAW"> Java Web
			  </label>
			</div>
			
			<div class="form-check">
			  <label class="form-check-label">
			    <input class="form-check-input" type="checkbox" name="disciplinas" value="JANU"> Java Nuvem
			  </label>
			</div>
		
			<div class="form-group">
			  <label style = "font-size:x-large;">Região</label>
			  <select class="form-control" name="regiao">
			    <option value="N">Norte</option>
				<option selected  value="Ne">Nordeste</option>
				<option value="S">Sul</option>
				<option value="Sd">Suldeste</option>
				<option value="Co">Centro-Oeste</option>
			  </select>
			</div>
	
			<button type="submit" class="btn btn-primary">Cadastrar</button>
		</form>
	</div>
</body>
</html>