<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<%
    String nombre = "José desde variable del JSP";
%> 
<c:set var="nom" value="<%=nombre%>"/>  
<c:out value="${pageScope.nom}"/> 


<%
    session.setAttribute("nombre", "José");
    pageContext.setAttribute("nombre", "Jorge");
    request.setAttribute("nombre", "Jean");
    application.setAttribute("nombre", "Toti");
%> 

<html> 
    <body> 
        <hr/>
        
        <c:out value="${sessionScope.nombre}" /> 
        <br/> 
        <c:out value="${pageScope.nombre}" /> 
        <br/> 
        <c:out value="${requestScope.nombre}" /> 
        <br/>     
        <c:out value="${applicationScope.nombre}" /> 
        
        <hr/>
        
        Page: <c:out value="${pageContext}" />
        <br/> 
        Método de Request: <c:out value="${pageContext.request.method}"/> 
        <br/>
        Parámetros del Request: <c:out value="${pageContext.request.queryString}"/>      
        <br/>
        Info del Server: <c:out value="${pageContext.servletContext.serverInfo}"/>    
        <br/>
        Context Path: <c:out value="${pageContext.servletContext.contextPath}"/>
        
    </body> 
</html> 