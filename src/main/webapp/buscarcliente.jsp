<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar Cliente</title>
    </head>
    <body>
        <h1>Buscar Clientes</h1>
        
        <form action="buscarcliente" method="post">
            <input type="text" name="filtro" placeholder="Buscar Cliente"/>
            <input type="submit" value="Buscar"/>
        </form>
        
        <hr>
        <%@page import="com.tecsup.jsp.model.Cliente, java.util.*" %>
        <%
            List<Cliente> clientes = (List<Cliente>)request.getAttribute("CLIENTES_FILTRADOS");
            if (clientes != null){
                out.println("<ul>");
                for (Cliente cliente : clientes) {
                        out.println("<li>"+ cliente.getNombreCompleto() + "</li>");
                }
                out.println("</ul>");
            }
        %>
    </body>
</html>
