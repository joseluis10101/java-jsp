<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@page import="com.tecsup.jsp.model.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado con JSTL</title>
    </head>
    <body>
        <h1>Listado con JSTL</h1>
        <%

            Cliente carmen = new Cliente("1019", "Carmen", "CC");
            Cliente jose = new Cliente("1020", "José", "EA");
            Cliente jean = new Cliente("1020", "Jean", "EE");
            Cliente alx = new Cliente("1020", "Alx", "CC");

            List<Cliente> clientes = Arrays.asList(alx, carmen, jose, jean);
            
            request.setAttribute("clientes", clientes);
        %>
        
        
        <c:forEach items="${requestScope.clientes}" var="p" varStatus="i">
            ${i.count} -  ${p.nombreCompleto}  <br/>
        </c:forEach>
        

    </body>
</html>
