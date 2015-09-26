<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Generar Links</h1>

        <a href="<c:url value="mock.jsp">
               <c:param name="nombre" value="jose"/>
               <c:param name="apellido" value="ea"/>
           </c:url>">Visitar A</a> 

        <hr/>
        
        <h1>Imprimir XML/HTML como texto</h1>
        <c:out value="<h3> Hola </h3> <br/> <p></p>"  escapeXml="true"/>
    </body>
</html>
