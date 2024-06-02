<%-- 
    Document   : Gest_Nov
    Created on : 22 abr 2024, 17:24:03
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
            <div class="tickets_container" id="nov_container_admin">
                <!-- Novedad -->
                <section class="prod d-flex" id="prod1">
                    <input type="hidden" name="name" value="">
                    <img src="" alt="prod" class="img_prod_cnf">
                    <section class="d-flex flex-column Prod_Lis w-75 h-100">
                        <span class="N_ProVP"></span>
                        <textarea type="text" class="D_ProVP h-75" id="D_ProVP" disabled></textarea>
                        <section>
                            <form action="" method="post">
                                <button class="btn_edit_nov_list" type="submit">Restaurar Novedad</button>
                                <input type="hidden" name="idn" value="">
                            </form>
                            <form action="" method="post">
                                <button class="btn_nov_list" type="submit">Dar de Baja</button>
                                <input type="hidden" name="idn" value="">
                            </form>
                        </section>
                    </section>
                </section>
            </div>
        </div>
    </body>
</html>
