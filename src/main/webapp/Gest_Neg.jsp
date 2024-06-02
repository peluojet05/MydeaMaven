<%-- 
    Document   : Gest_neg
    Created on : 22 abr 2024, 17:23:05
    Author     : altro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="templates/Referencias/Ref_Admin.jsp"/>
        <title>Gestionar Novedades</title>
    </head>
    <body>
        <jsp:include page="templates/Navegadores/Navegador_CA.jsp"/>

        <div class="gestion_tickets_container" id="gestion_usu_container">
            <div class="controlls_gest_tick" id="controlls_gest_usu">
                <div class="fltr_tickets" id="fltr_tickets">
                    <section class="busq_admin_acc">
                        <input class="form-control bus_admin_acc" id="bus_admin_acc" type="text"
                               placeholder="Buscar Usuario">
                        <i class="bi bi-search text-white"></i>
                    </section>
                    <section class="opt_admin" id="opt_usu">
                        <button id="">Usuarios</button>
                        <button id="">Vendedores</button>
                        <button id="">Cualquiera</button>
                    </section>
                    <section class="opt_admin">
                        <select class="select_adm" id="filtr_est">
                            <option selected disabled hidden>Filtrar por Estado</option>
                            <option value="true">Usuario Activo</option>
                            <option value="false">De Baja</option>
                            <option value="General">Cualquiera</option>
                        </select>
                    </section>
                </div>
            </div>
            <div class="tickets_container" id="neg_container_admin">
                <!-- Novedad -->
                <section class="busq_result busq_neg" id="negbusq">
                    <section class="neg_bus_pre">
                        <img class="img_neg_busq" src="" alt="" id="img_loc_busq">
                        <span class="nb_busq nb" id="nb_busq">Nombre Negocio</span>
                    </section>
                    <div class="line_neg_busq"></div>
                    <section class="d-flex desc_bus">
                        <section class="num_busq">
                            <span class="desc_neg_busq">Hola SOy una descripcion.</span>
                            <section class="d-flex dir_bus">
                                <i class="bi bi-geo-alt-fill"></i>
                                <span id="dir_neg_busq">Hermenegildo Galeana No16, San Gregorio Atlapulco, Xchimilco, #16600</span>
                            </section>
                            <section class="inf_neg_busq">
                                <i class="bi bi-heart-fill"></i> 000<span id="calf_neg_busq"></span>
                            </section>
                            <section class="inf_neg_busq">
                                <i class="bi bi-chat-square-dots-fill"></i> 000<span id="com_neg_busq"></span>
                            </section>
                            <section class="form_admin_nego">
                                <form action="">
                                    <button id="baja_usu">Dar de baja Negocio <i class="bi bi-shop"></i></button>
                                    <input type="hidden" id="idu" name="idu" value=""/>
                                </form>
                                <form action="">
                                    <button id="baja_usu">Restaurar Negocio <i class="bi bi-shop"></i></button>
                                    <input type="hidden" id="idu" name="idu" value=""/>
                                </form>
                            </section>
                        </section>
                    </section>
                </section>
            </div>
        </div>
    </body>
</html>
