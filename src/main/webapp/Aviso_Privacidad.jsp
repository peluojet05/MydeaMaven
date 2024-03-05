<%-- 
    Document   : Avisos
    Created on : 1 dic 2023, 16:37:42
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/Registro_IS/Avisos.css">
    <jsp:include page="templates/Referencias/Todas_Ref.jsp"/>
    <title>Aviso de Privacidad</title>
</head>

<body>
    <nav class="nav_avisos deslizari">
        <section>
            <a href="index.jsp"><img src="assets/logo_mydea_comida.png" alt="logotipo" class="logo"></a>
        </section>
        <span class="txt_tt_av">Aviso de Privacidad</span>
        <section>
            <a href="Terminos_Condiciones.jsp" class="btn" id="tyc_btn">Terminos y Condiciones <i
                    class="bi bi-caret-right-fill" id="flecha_av"></i></a>
        </section>
    </nav>
    <div class="texto_aviso">
        <strong>
            RESPONSABLE </strong><br>
        MYDEA con portal de internet <code>[dirección]</code> es responsable de recabar sus datos personales, del uso
        que
        se le dé a los mismos y de su protección. <br>
        <br>
        <strong>
            FINES DE SUS DATOS PERSONALES <br></strong>
        Su información personal será utilizada para proveer los siguientes servicios:<br>
        • publicar negocios <br>
        • brindar una opinión sobre los negocios<br>
        • evaluar la calidad del servicio que le brindamos.<br>
        <br>
        <strong>
            DATOS PERSONALES REQUERIDOS<br></strong>
        Para las finalidades antes mencionadas, requerimos obtener los siguientes datos personales: <br>
        · Nombre<br>
        · Apellido<br>
        · Correo electrónico<br>
        · Número telefónico<br>
        · Dirección del negocio<br>
        <br>
        <strong>
            COMO PUEDE ACCEDER, RECTIFICAR O CANCELAR SUS DATOS PERSONALES<br></strong>
        Usted tiene derecho de acceder, rectificar y cancelar sus datos personales, así como de oponerse al
        tratamiento de los mismos o revocar el consentimiento que para tal fin nos haya otorgado, a través
        de los procedimientos que hemos implementado. Para conocer dichos procedimientos, los requisitos y
        plazos, se puede poner en contacto con nuestro departamento de datos personales en <strong>
            mydeaethev@gmail.com.
        </strong><br>
        <br>
        <strong>
            CAMBIOS EN EL AVISO DE PRIVACIDAD<br></strong>
        El presente aviso de privacidad puede sufrir modificaciones, cambios o actualizaciones debido a
        nuevos requerimientos legales o por necesidades propias sobre los servicios. Nos comprometemos a
        mantener siempre actualizado este aviso de privacidad y siempre podrá consultar las actualizaciones
        que existan en <code>[dirección].</code> <br>
        Ultima actualización: 26/02/2023.<br>
    </div>
    <div class="colorbar_ap deslizari"></div>
</body>

</html>