<%-- 
    Document   : about
    Created on : 25/05/2016, 08:22:48
    Author     : Endrio Martin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>About - Fineminds Marketing Web Template</title>
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
					<li class="selected">
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
				<form action="index.jsp">
					<span>Login</span>
					<input type="text" onClick="this.value='';" onFocus="this.select()" onBlur="this.value=!this.value?'Digite um Email valido':this.value;" value="Digite um Email valido">
					<input type="submit" id="submit" value="submit">
				</form>
			
			
				<p>
					Martin
				</p>
			</div>
			<div class="body">
				<div class="about">
					<h1>Jogador</h1>
                                        	<h2>Homem de Ferro</h2>
					<img src="images/paper-wheel.jpg" alt="">
					<h4><span>Tony Stark, o Homem de Ferro, é um cientista e empresário genial, bilionário e filantropo.
                                                Entra no MIT com 15 anos para a graduação em Engenharia elétrica e com 19 anos recebe o título de Mestre em Física.
                                                Nunca faltou dinheiro para seu projetos, pois herdou a fortuna e os empreendimentos de seu pai aos 21 anos, quando este faleceu.</span></h4>
				
					<h2><span>Informacoes</span></h2>
                                        <ul>
					<p>Nome: Tony Stark </p>					
                                        <p>Codinome:Homem de Ferro</p>
                                        <p>Descricao:Usa uma poderosa Armadura</p>
                                        <p>Foto:???</p>
                                        <p>Inteligencia:10</p>
                                        <p>Força:7</p>
                                        <p>Velocidade:7</p>
                                        <p>Resistencia:7</p>
                                        <p>Projecao de Energia:8</p>
                                        <p>Habilidade de Combate:6</p>
                                        <p>Categoria :AAA</p>
                                        <p>Editora:Marvel</p>
                                        <p>Regiao: Anywhere</p>
                                        </ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>