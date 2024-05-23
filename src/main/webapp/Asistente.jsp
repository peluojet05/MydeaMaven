<%-- 
    Document   : Asistente
    Created on : 21 may 2024, 21:17:05
    Author     : ibarr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
      </head>
      <body>
          <ul id="chat"></ul>
          <input type="text" placeholder="Escribe algo" id="prompt">
          <button id="enviar">enviar</button>


          <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.min.js"></script>
          <script src="js/asistente.js"></script>
      </body>
</html>
