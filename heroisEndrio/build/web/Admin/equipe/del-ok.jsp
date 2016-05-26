<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>

<%
    
     if(request.getParameter("codigo") != null){
    EquipeDAO dao = new EquipeDAO();
    Equipe x = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));
    dao.excluir(x);}
      else{
        response.sendRedirect("index.jsp");
     }
%>

<%@include file="../cabecalho.jsp"%>

<h2>Equipe</h2>
<p>Equipe excluída com sucesso</p>

<div id="botao"><a href="index.jsp">Voltar</a></div>

</body>
</html>
