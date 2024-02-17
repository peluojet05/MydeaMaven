<%-- 
    Document   : index
    Created on : 15 feb. 2024, 14:59:37
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Hello World heroku</h1>
        <h2>Hola Adrian</h2>
        <form action="Accion">
            TEXTO:<input type="text" name="text"/>
            <br>
            NUMERO:<input type="text" name="text2"/>
            <br>
            <button type="submit">SUBMIT</button>
        </form>
        <%
            if(request.getAttribute("mensaje")!=null) 
            {  
        %>          
                <script>
    window.onload=function() {
       alert( "Exito:  <%=request.getAttribute("mensaje")%>");
    };
 </script>      
        <%
            }
                %>
    </body>
</html>
