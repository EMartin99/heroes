<%-- 
    Document   : index
    Created on : 25/05/2016, 08:24:27
    Author     : Endrio Martin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> </title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<div class="border">
		<div id="bg">
			background
		</div>
		<div class="page">
			<div class="sidebar">
				
				<ul>
					<li class="selected">
						<a href="index.jsp">Home</a>
					</li>
					<li>
						<a href="about.jsp">Jogador</a>
					</li>
					<li>
						<a href="services.jsp">Herois</a>
					</li>
				
					<li>
						<a href="contact.jsp">Contato</a>
					</li>
				<li>
						<a href="admin.jsp">Admin</a>
					</li>
				</ul>
				<form action="about.jsp">
					<span>Login</span>
					<input type="text" onClick="this.value='';" onFocus="this.select()" onBlur="this.value=!this.value?'Digite um Email Valido':this.value;" value="Digite um Email Valido">
					<input type="submit" id="submit" value="submit">
				</form>
				
				
				<p>
					Endrio Martin
				</p>
			</div>
			<div class="body">
				<div>
					<h1>Bem vindo ao site herois</h1>
					
					<img src="images/tree.jpg" alt="">
					<div>
						<h3><span>Introducão</span></h3>
						<p>
							Este site pode te apresentar herois bem legais.
						</p>
					
					</div>
			
				</div>
			</div>
		</div>
	</div>
</body>
</html>