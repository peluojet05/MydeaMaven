<%-- 
    Document   : Todas_Ref
    Created on : 2 nov 2023, 16:18:08
    Author     : altro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int version = (int) (Math.random() * 10) + 1; // Genera un número aleatorio del 1 al 10
%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.2/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.2/dist/sweetalert2.min.js"></script>
<link rel="stylesheet" href="css/General/normalize.css?v=<%=version%>">
<link rel="stylesheet" href="css/General/Navegador.css?v=<%=version%>">
<link rel="stylesheet" href="css\Administrador\Acciones_admin.css?v=<%=version%>">
<link rel="icon" href="assets/Logo_Icon.png" type="icon">
<link rel="stylesheet" href="css/Crear/CrearInfo.css?v=<%=version%>">
<link rel="stylesheet" href="css/Crear/CrearFormN.css?v=<%=version%>" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
      integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
      crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="css/Registro_IS/Registro.css?v=<%=version%>">
<link rel="stylesheet" href="css/Registro_IS/Iniciar_sesion.css?v=<%=version%>">
<link rel="stylesheet" href="css/General/Animations.css?v=<%=version%>">
<link rel="stylesheet" href="css/Cuenta/PerfilUsuario.css?v=<%=version%>">
<link rel="stylesheet" href="css/Cuenta/PerfilEditar.css?v=<%=version%>">
<link rel="stylesheet" href="css/Negocios/Negocios.css?v=<%=version%>" />
<link rel="stylesheet" href="css/General/footer.css?v=<%=version%>" />
<link rel="stylesheet" href="css/General/index.css?v=<%=version%>" />
<link rel="stylesheet" href="css/General/Buscador.css?v=<%=version%>" />
<link rel="stylesheet" href="css/Cuenta/Rese_Hechas.css?v=<%=version%>" />
<link rel="stylesheet" href="css/Negocios/Vendedor_Perfil.css?v=<%=version%>" />
<link rel="stylesheet" href="css/Negocios/Feedback.css?v=<%=version%>" />
<link rel="stylesheet" href="css/Negocios/Novedades.css?v=<%=version%>" />
<link rel="stylesheet" href="css/General/error.css?v=<%=version%>" />
<link rel="stylesheet" href="css/Administrador/Tickets.css?v=<%=version%>" />
<link rel="stylesheet" href="css/preloud.css?v=<%=version%>" />
<script src="js/submit.js"></script>