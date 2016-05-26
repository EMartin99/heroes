

<%@page import="modelo.Regiao"%>
<%@page import="dao.RegiaoDAO"%>
<% if ((request.getParameter("nome").isEmpty()) || (request.getParameter("nome") == null)) {
        response.sendRedirect("index.jsp");

    } else {
        RegiaoDAO dao = new RegiaoDAO();
        Regiao x = new Regiao();
        x.setNome(request.getParameter("nome"));
            x.setDescricao(request.getParameter("descricao"));

        

        dao.incluir(x);
    }
%>

<%@include file="../cabecalho.jsp"%>

<h2>Regiao</h2>
<p>Nova região adicionada com sucesso</p>

<div id="botao"><a href="index.jsp">Voltar</a></div>

</body>
</html>
