<%-- 
    Document   : Asistente
    Created on : 30 may 2024, 00:42:04
    Author     : altro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="ass_cont">
    <button id="btn_ass"><img src="assets/Asistente.png" alt="alt"/></button>
</div>
<div class="mns_ass_cont" id="msj_ass">
    <ul id="chat"></ul>
    <section>
        <input type="text" placeholder="Escribe algo" id="prompt">
        <button id="enviar"><i class="bi bi-arrow-up-circle-fill"></i></button>
    </section>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.min.js"></script>
<script src="js/asistente.js"></script>
