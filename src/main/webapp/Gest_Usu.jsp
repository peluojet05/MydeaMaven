<%-- 
    Document   : Gest_usu
    Created on : 22 abr 2024, 17:22:50
    Author     : altro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="templates/Referencias/Ref_Admin.jsp"/>
        <title>Gestionar Usuarios</title>
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
                        <button>Usuarios</button>
                        <button>Vendedores</button>
                        <button>Cualquiera</button>
                    </section>
                    <section class="opt_admin">
                        <select class="select_adm" id="filtr_est">
                            <option selected disabled hidden>Filtrar por Estado</option>
                            <option value="Abierto">Activo</option>
                            <option value="En Proceso">De Baja</option>
                            <option value="General">Cualquiera</option>
                        </select>
                    </section>
                </div>
            </div>
            <div class="tickets_container" id="tickets_container">
                <!-- Usuario Normal -->
                <section class="busq_result busq_usu nr" id="busq_usu_adm">
                    <img src="" class="usunr_img" id="usu_img_busq">
                    <section class="info_usu_nusq usu_nr" id="usu_nr">
                        <span class="nb_busq nb">Usuario</span>
                        <span class="dir_bus w-100 desc_busq" id="desc_busq_usu">Descripcion</span>
                        <section class="sect_btns_adminusu">
                            <form>
                                <button id="baja_usu">Dar de baja al Usuario <i class="bi bi-person-x"></i></button>
                                <input type="hidden" id="idu" name="idu" value=""/>
                            </form>
                            <form>
                                <button id="baja_usu">Dar de alta al Usuario <i class="bi bi-person-fill-up"></i></button>
                                <input type="hidden" id="idu" name="idu" value=""/>
                            </form>
                        </section>
                        <i class="bi bi-person-fill usernr_icon"></i>
                    </section>
                </section>
                <!-- Usuario Vendedor -->
                <section class="busq_result busq_usu" id="busq_usu_adm" >
                    <img src="" class="usuvd_img" id="usu_img_busq">
                    <section class="info_usu_nusq usu_vd" id="vend_nr">
                        <span class="nb_busq nb">Vendedor </span>
                        <span class="dir_bus w-100 desc_busq" id="desc_busq_usu">Descripcion</span>
                        <i class="bi bi-shop uservd_icon"></i>
                        <section class="sect_btns_adminusu">
                            <form>
                                <button id="baja_vend">Dar de baja al Usuario <i class="bi bi-person-x"></i></button>
                                <input type="hidden" id="idu" name="idu" value=""/>
                            </form>
                            <form>
                                <button id="baja_vend">Dar de alta al Vendedor <i class="bi bi-person-fill-up"></i></button>
                                <input type="hidden" id="idu" name="idu" value=""/>
                            </form>
                        </section>
                    </section>
                </section>
                <!-- Usuario Vendedor -->
                <section class="busq_result busq_usu" id="busq_usu_adm" >
                    <img src="" class="usuvd_img" id="usu_img_busq">
                    <section class="info_usu_nusq usu_vd" id="vend_nr">
                        <span class="nb_busq nb">Vendedor </span>
                        <span class="dir_bus w-100 desc_busq" id="desc_busq_usu">Descripcion</span>
                        <i class="bi bi-shop uservd_icon"></i>
                        <section class="sect_btns_adminusu">
                            <form>
                                <button id="baja_vend">Dar de baja al Usuario <i class="bi bi-person-x"></i></button>
                                <input type="hidden" id="idu" name="idu" value=""/>
                            </form>
                            <form>
                                <button id="baja_vend">Dar de alta al Vendedor <i class="bi bi-person-fill-up"></i></button>
                                <input type="hidden" id="idu" name="idu" value=""/>
                            </form>
                        </section>
                    </section>
                </section>
            </div>
        </div>
        <script src="js/edipro.js"></script>
    </body>
</html>
