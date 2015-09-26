<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html> 
    <body> 
        <c:set var="titulo" value="Este es el TITULO de la PAGINA"/> 

        ${fn:toUpperCase(titulo)} 
        <br/> 
        ${fn:substring(titulo, 2,10)} 
        <br/> 
        ${fn:replace(titulo, "TITULO", "TITLE")} 
        <br/>  
        ${fn:escapeXml("<foo>body of foo</foo>")} 
        <br/>  
        ${fn:escapeXml("<p>body of foo</p>")} 
    </body> 
</html>