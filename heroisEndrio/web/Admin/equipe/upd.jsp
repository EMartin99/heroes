

<%@page import="modelo.Equipe"%>
<%@page import="dao.EquipeDAO"%>
<%@include file="../cabecalho.jsp"%>
<%
    EquipeDAO dao = new EquipeDAO();
    Equipe x = dao.buscarPorChavePrimaria(Integer.parseInt(request.getParameter("codigo")));

%>
<h2>Equipe</h2>

<div>

    <form action="upd-ok.jsp" method="post">
        <label>C�digo</label></br>
        <input type="text" value="<%=request.getParameter("codigo")%>" name ="codigo" readonly></br>
        <label>Nome:</label></br>
        <input type="text" value="<%=x.getNome()%>" name="nome" required></br>
        <label>Descri��o:</label></br>
        <input type="text" value="<%=x.getDescricao()%>" name="descricao"></br></br>
        <input type="submit" value="Enviar"></br>
        <input type="reset"  value="Limpar">


    </form>
</div>

</br>

<div id="botao"><a href="index.jsp">Voltar</a></div>

</body>
</html>
