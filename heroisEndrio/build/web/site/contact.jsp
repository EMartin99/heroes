<%-- 
    Document   : contact
    Created on : 25/05/2016, 08:23:33
    Author     : Endrio Martin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Contact - Fineminds Marketing Solutions Website Template</title>
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
					<li>
						<a href="index.jsp">Home</a>
					</li>
					<li>
						<a href="about.jsp">Jogador</a>
					</li>
					<li>
						<a href="services.jsp">herois</a>
					</li>
				
					<li class="selected">
						<a href="contact.jsp">Contato</a>
					</li>
                                        
                                        <li>
						<a href="admin.jsp">Admin</a>
					</li>
					
				</ul>
				
				
				
				<p>
					Herois
				</p>
			</div>
			<div class="body">
				<div class="contact">
					<h1>Contato</h1>
				
					<p>
		                       Aqui voce pode entrar em contato conosco
					</p>
					<form action="index.jsp">
						<label for="firstname">Nome</label>
						<input type="text" id="firstname">
						<label for="lastname">Sobrenome</label>
						<input type="text" id="lastname">
						<label for="email">Email</label>
						<input type="text" id="email">
						<label for="subject">Idade</label>
						<input type="text" id="subject">
						<label for="message">Menssagem</label>
						<textarea name="" cols="30" rows="10" id="message"></textarea>
						<input type="submit" id="submit2" value="">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>