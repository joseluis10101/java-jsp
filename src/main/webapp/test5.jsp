<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        < -- ~/test5.jsp?ok=yes&name=jose&curso=java -->

        <h3>EJEMPLO DE IF CON JSTL</h3> 

        <c:if test='${param.ok == "yes"}'>         
            Hola <c:out value="${param.name} "/> 
        </c:if>
        <hr/>
        <h3>EJEMPLO DE CHOOSE CON JSTL</h3>             

        <c:choose>
            <c:when test='${param.curso == "Java"}'>
                CURSO JAVA
            </c:when>

            <c:when test='${param.curso == "Angular"}'>
                CURSO ANGULAR
            </c:when>
        </c:choose>

        <hr/>
        <h3>FOREACH: ÁREA DE CUADRADO</h3> 
        <table> 
            <tr><th>Value</th><th>Square</th></tr>        

            <c:forEach var="x" begin="0" end="10" step="2"> 
                <tr>
                    <td><c:out value="${x}"/></td>
                    <td><c:out value="${x * x}"/></td>
                </tr> 
            </c:forEach> 
        </table>


        <hr>

        <c:set var="minombre" value="${param.minombre}"/>
        
        <a href="<c:url value="mock.jsp?a=${minombre}"/>">hazme click</a>           
       
        
        <hr/> 
        <c:import url="http://www.google.com"/> 

    </body>
</html>
