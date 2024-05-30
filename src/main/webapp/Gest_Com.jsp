<%-- 
    Document   : Gest_Com
    Created on : 22 abr 2024, 17:23:51
    Author     : altro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="templates/Referencias/Todas_Ref.jsp"/>
        <title>Gestionar Comentarios</title>
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
                        <button id="">Con Like</button>
                        <button id="">Sin Like</button>
                        <button id="">Cualquiera</button>
                    </section>
                    <section class="opt_admin">
                        <select class="select_adm" id="filtr_est">
                            <option selected disabled hidden>Filtrar por Estado</option>
                            <option value="true">Comentario Activo</option>
                            <option value="false">De Baja</option>
                            <option value="General">Cualquiera</option>
                        </select>
                    </section>
                </div>
            </div>
            <div class="tickets_container" id="tickets_container">
                <!-- Comentarios -->
                <section class="busq_result" id="busq_result_com">
                    <input class="d-none" id="fecha_inp_busq" type="date" disabled value="2007-04-20">
                    <input class="d-none" type="text" id="nom_neg_com" disabled value="Nombre del negocio que ah comentado">
                    <img src="src" class="d-none" alt="Logo del negocio que comento" id="log_neg_com"/>
                    <section class="resena_usua_esp d-flex flex-column" id="resena_usua_admin">
                        <section class="comentario_n">
                            <span id="nom_usu_com">Usuario que comento</span>
                            <img src="assets/Logo_Icon.png" alt="Img de perfil del usuario" id="img_perf_com">
                        </section>
                        <span class="texto_res_usu" id="coment_desc">Comentario</span>
                        <span class="liornli"><i class="bi bi-heart-fill"></i> Le gustó este Negocio</span>
                        <i class="bi bi-quote comment_icon_neg"></i>
                        
                    <section class="sect_btns_admincom">
                        <form>
                            <button id="baja_usu">Dar de baja al Usuario <i class="bi bi-person-x"></i></button>
                            <input type="hidden" id="idu" name="idu" value=""/>
                        </form>
                        <form>
                            <button id="baja_usu">Dar de alta al Usuario <i class="bi bi-person-fill-up"></i></button>
                            <input type="hidden" id="idu" name="idu" value=""/>
                        </form>
                    </section>
                    </section>
                </section>
            </div>
        </div>
    </body>
</html>
