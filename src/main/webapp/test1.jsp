<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <body>
        <h1>Primer JSTL </h1>

        <c:set scope="session" var="NOMBRE" value="<b>José EA</b>"/>

        Bienvenido: 
        <c:out value="${sessionScope.NOMBRE}" 
               default="Invitado" escapeXml="false"/>


    </body>
</html>
