<%@page import="modelo.Jogador"%>
<%@page import="dao.JogadorDAO"%>

<%
    JogadorDAO dao=new JogadorDAO();
    Jogador x=dao.buscarPorChavePrimaria(request.getParameter("email"));
    
    dao.excluir(x);
    

%>

<%@include file="../cabecalho.jsp"%>

<h2>Jogador</h2>
<p>Jogador excluído com sucesso</p>

<div id="botao"><a href="index.jsp">Voltar</a></div>

</body>
</html>
