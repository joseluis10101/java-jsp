<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Primer JSP</title>
    </head>
    <body>
        <h1>LABORATORIO JSP</h1>
        <hr/>
        <!-- EJEMPLO 1: scriptlet jsp-->
        <%
            String mensaje = "¡Mi primer Scriplet de JSP!";
            out.println(mensaje);
        %>

        <hr/>
        <!-- EJEMPLO 2: expression-->
        <%
            String curso = "Hola Java Web. Imprimiendo desde una expresión.";
        %>

        <%=curso%>


        <hr/>
        <!-- EJEMPLO 3: variable global-->

        <%! int count = 0;%>
        <% count++;%>
        Usted es el visitante Nro:<%=count%>

        <hr>

        <!-- EJEMPLO 4: función-->

        Usando PI (<%=pi%>), el área del círculo <br/>
        de un radio de 3 es <%=getAreaCirculo(3)%>

        <%!

            double getAreaCirculo(double r) {
                return pi * r * r;
            }
        %>
        <%! final double pi = 3.1415;%>


        <!-- EJEMPLO 5 : Comentarios-->

        <!-- Comentario HTML-->
        <%
            // comentario de una sola línea
            /* 
             comentario en bloque
        
             */
        %>

        <%-- Comentario completo de scriplet --%>
        <hr/>
        <!-- EJEMPLO 6: Fecha -->
        <%
            Date fecha = new Date();
            String total = fecha.getDate() + "-"
                    + (fecha.getMonth() + 1) + "-"
                    + (fecha.getYear() + 1900);
        %>

        <%=total%>

        <hr/>

        <!-- EJEMPLO 7: Listas -->

        <%
            List<String> tecnologias = new ArrayList<String>();
            tecnologias.add("JSP");
            tecnologias.add("Servlet");
            tecnologias.add("JSTL");
            tecnologias.add("Thymeleaf");

            for (String t : tecnologias) {
                out.println(t + "<br/>");
            }
        %>
        
         <hr/>
         <!-- EJEMPLO 8: Incluir JSP -->
         <%@include file="tabla.jsp" %>
         

    </body>
</html>
