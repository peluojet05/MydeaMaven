<%-- 
    Document   : ConfirmarCodigo_E
    Created on : 7 mar 2024, 14:43:21
    Author     : ibarr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .cont {
            text-align: center;
            margin-top: 50px; /* Ajusta este valor según tus necesidades */
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 300px; /* Ajusta este valor según tus necesidades */
            margin: 0 auto; /* Centra el formulario horizontalmente */
        }

        h1 {
            color: #333;
            font-size: 1.2em; /* Ajusta este valor según tus necesidades */
            margin-bottom: 10px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #555;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        span {
            color: red;
            display: block;
            margin-bottom: 16px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
    <div class="cont">
        <h1>Se ha enviado un codigo a su correo electrónico</h1>
        <form action="EditarCuenta" method="POST">
            <label for="code">Código de confirmación:</label><br>
            <input type="text" id="code" name="codigo"><br>
            <span>${error_codigo}</span>
            <%-- Recuperar los datos de la sesión --%>
            <input type="hidden" name="nomc" value="<%= session.getAttribute("nombrec") %>">
            <input type="hidden" name="nomu" value="<%= session.getAttribute("nombreu") %>">
            <input type="hidden" name="desc" value="<%= session.getAttribute("descripcion") %>">
            <input type="hidden" name="telefono" value="<%= session.getAttribute("telefono") %>">
            <input type="hidden" name="correo" value="<%= session.getAttribute("correo") %>">
            <input type="hidden" name="fb" value="<%= session.getAttribute("facebook") %>">
            <input type="hidden" name="ig" value="<%= session.getAttribute("instagram") %>">
            <input type="hidden" name="tw" value="<%= session.getAttribute("twitter") %>">
            <input type="hidden" name="web" value="<%= session.getAttribute("web") %>">
            <input type="hidden" name="foto" value="<%= session.getAttribute("foto") %>">
            
            <input type="submit" value="Confirmar">
        </form>
        </div>
</html>
