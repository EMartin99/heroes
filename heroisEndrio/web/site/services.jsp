<%-- 
    Document   : services
    Created on : 25/05/2016, 08:25:09
    Author     : Endrio Martin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Services - Fineminds Marketing Solutions Website Template</title>
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
					<li class="selected">
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
					<input type="text" onClick="this.value='';" onFocus="this.select()" onBlur="this.value=!this.value?'Digite um Email Valido':this.value;" value="Digite um Email Valido">
					<input type="submit" id="submit" value="submit">
				</form>
				
				
				<p>
				Hulha Negra
				</p>
			</div>
			<div class="body">
				<div class="services">
					<h1>Herois</h1>
					<ul class="navigation">
						<li class="selected">
							<a href="services.jsp">Heroi</a>
						</li>
						<li>
							<a href="services.jsp">Vilao</a>
						</li>
						<li>
							<a href="services.jsp">Anti Heroi</a>
						</li>
                                                <li>
							<a href="services.jsp">DC</a>
						</li>
                                                <li>
							<a href="services.jsp">Marvel</a>
						</li>
					</ul>
					<ul>
						<li>
							<h3><span>Homem de Ferro</span></h3>
							<div>
								<img src="images/logo-design.jpg" alt="">
							</div>
							<p>
								Homem de Ferro (Iron Man, em inglês) é um personagem de HQ da Marvel Comics.
                                                                Sua identidade verdadeira é a do empresário e bilionário Anthony (Tony) Stark,
                                                                que usa armaduras de alta tecnologia no combate ao crime.
                                                                <a href="about.jsp">Para mais informacoes
                                                         </a> 
							</p>
						
						</li>
						<li>
							<h3><span>Thor</span></h3>
							<div>
								<img src="images/web-design.jpg" alt="">
							</div>
							<p>
                                                            Thor é um super-herói de histórias em quadrinhos 
                                                            americanos publicado pela Marvel Comics. 
                                                            Baseado no deus Thor, originário da Mitologia Nórdica
							</p>
						</li>
						<li>
							<h3><span>Batman</span></h3>
							<div>
								<img src="images/print-design.jpg" alt="">
							</div>
							
							<p>
								Batman é um personagem fictício, um super-herói da banda 
                                                                desenhada americana publicada pela DC Comics.
                                                                A identidade secreta de Batman é Bruce Wayne, um bilionário americano,
                                                                playboy, magnata de negócios, filantropo e dono da corporação Wayne Enterprises.
                                                                
							</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>