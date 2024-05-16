<%-- 
    Document   : Navegador_CC
    Created on : 2 nov 2023, 23:34:41
    Author     : altro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Referencias/Loader.jsp"/>
<nav class="bg-body-tertiary container-fluid bg-white">
    <div class="row d-flex align-items-center p-1 h-100">
        <div class="col-3 d-flex">
            <a href="indexCC.jsp"><img src="assets/logo_mydea_comida.png" alt="logotipo" class="img-fluid logo"></a>
        </div>
        <form class="col-6 d-flex w-10" method="post" action="BuscadorCC.jsp" >
            <input class="form-control input_search" placeholder="Buscar... (Cafeterias, Abarrotes, Snacks)"
                   aria-label="Search" name="txt" >
            <button class="btn button_search" type="submit"><i class="bi bi-search text-white"></i></button>
        </form>

        <div class="col-3 d-flex justify-content-evenly">
            <div class="btn-group Cuenta_des w-50">
                <button type="button" class="btn btn-sm btn-secondary btn_count" id="btn_count_nav"><i
                        class="bi bi-person-circle"></i>Cuenta</button>
                <button type="button"
                        class="btn btn-sm btn-secondary dropdown-toggle dropdown-toggle-split btn_des w-0"
                        data-bs-toggle="dropdown" aria-expanded="false">
                </button>
                <ul class="dropdown-menu">
                    <li class="dropdown-item" id="btn_count2_nav">Revisar Cuenta</li>
                    <li class="dropdown-item" id="btn_edit_nav">Editar Cuenta</li>
                    <li class="dropdown-item" id="btn_sav2_nav">Guardados</li>
                    <li class="dropdown-item" id="btn_res_nav">Reseñas</li>
                    <li class="dropdown-item" id="btn_ticket_nav">Tickets</li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <form action="CerrarSesion" id="formcerrar">
                        <li class="dropdown-item">
                            <button type="submit" id="btn_lgout_nav">Cerrar Sesión</button>
                        </li>
                    </form>
                </ul>
            </div>
            <button type="button" class="btn btn-sm btnp" data-bs-toggle="tooltip" id="btn_sav_nav"
                    data-bs-placement="bottom" data-bs-title="Guardados"> <i class="bi bi-bookmark-fill book"></i>
            </button>
        </div>
    </div>
</nav>
<div class="cursor"></div>
<div class="cursor2"></div>
<audio id="myAudio">
    <source src="assets/click.mp3" type="audio/mpeg">
    Tu navegador no soporta el elemento de audio.
</audio>
<script src="js/click.js"></script>
<script src="js/Nav_CC.js"></script>