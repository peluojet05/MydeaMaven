<%-- 
    Document   : Gest_Tick
    Created on : 22 abr 2024, 17:24:17
    Author     : altro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="templates/Referencias/Todas_Ref.jsp"/>
        <link rel="stylesheet" href="css/Administrador/Tickets.css" />
        <title>Gestionar Tickets</title>
    </head>
    <body>
        <jsp:include page="templates/Navegadores/Navegador_CA.jsp"/>
        <div class="gestion_tickets_container">
            <div class="controlls_gest_tick">
                <span class="tt_acc_adm">Gestión de Tickets</span>
                <div class="fltr_tickets">
                    <section class="busq_admin_acc">
                        <input class="form-control bus_admin_acc" id="bus_admin_acc" type="text"
                               placeholder="Buscar Ticket">
                        <i class="bi bi-search text-white"></i>
                    </section>
                    <section class="opt_admin">
                        <select class="select_adm form-" id="filtr_pri">
                            <option selected disabled hidden>Filtrar por Prioridad</option>
                            <option value="Alta">Alta</option>
                            <option value="Media">Media</option>
                            <option value="Baja">Baja</option>
                            <option value="General">Cualquiera</option>
                        </select>
                    </section>
                    <section class="opt_admin">
                        <select class="select_adm" id="filtr_tem">
                            <option selected disabled hidden>Filtrar por Tema</option>
                            <option value="Negocio">Problemas con los negocios</option>
                            <option value="Desconocido">Errores Desconocidos</option>
                            <option value="Ejecucion">Errores de Ejecucion</option>
                            <option value="Editar">Falla al Editar</option>
                            <option value="Error">Paginas de Error</option>
                            <option value="Cuentas">Problemas con las cuentas</option>
                            <option value="Funcionamiento">Confución con el Funcionamiento</option>
                            <option value="Otro">Otro</option>
                            <option value="General">Cualquiera</option>
                        </select>
                    </section>
                    <section class="opt_admin">
                        <select class="select_adm" id="filtr_est">
                            <option selected disabled hidden>Filtrar por Estado</option>
                            <option value="Abierto">Abierto</option>
                            <option value="En Proceso">En Proceso</option>
                            <option value="Cerrado">Cerrado</option>
                            <option value="General">Cualquiera</option>
                        </select>
                    </section>
                    <section class="opt_admin filtr_fech">
                        <select class="select_adm" id="filtr_fech">
                            <option selected disabled hidden>Filtrar por Fecha</option>
                            <option value="AntesDe">Creado antes de:</option>
                            <option value="DespuesDe">Creado despues de:</option>
                        </select>
                        <input class="fech_admin" type="date" name="" id="fech_admin" disabled>
                    </section>
                </div>
            </div>
            <div class="tickets_container" id="tickets_container">

                <!--Ticket Abierto-->
                <section class="ticket_prev">
                    <svg class="icon_ticket_prev" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg"
                         xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512.092 512.092"
                         style="enable-background:new 0 0 512.092 512.092;" xml:space="preserve">
                    <path class="sombra_sv" style="fill:#24b240;"
                          d="M396.784,446.553L266.011,115.886c-1.446-3.641-4.771-6.196-8.661-6.656L54.683,85.38 c-5.752-0.808-11.07,3.2-11.878,8.952c-0.018,0.13-0.034,0.261-0.048,0.392L0.091,436.057c-0.763,5.841,3.353,11.196,9.194,11.959 c0.085,0.011,0.171,0.021,0.256,0.03l373.333,42.667h1.216c5.521,0.024,10.148-4.168,10.667-9.664l2.773-29.589 C397.672,449.788,397.416,448.107,396.784,446.553z" />
                    <path class="tick_deg" style="fill:#ffffff;"
                          d="M469.424,94.724c-0.684-5.851-5.983-10.04-11.834-9.355c-0.031,0.004-0.061,0.007-0.092,0.011 l-91.733,10.795L94.832,128.046c-5.801,0.659-9.994,5.86-9.408,11.669l32,341.333c0.519,5.496,5.146,9.688,10.667,9.664h1.216 l373.333-42.667c5.853-0.671,10.053-5.96,9.382-11.813c-0.005-0.045-0.01-0.089-0.016-0.134L469.424,94.724z" />
                    <path style="fill:#455A64;"
                          d="M309.424,170.713c-5.891,0.011-10.675-4.757-10.686-10.648c-0.005-2.84,1.123-5.565,3.134-7.571 l53.333-53.333c4.093-4.237,10.845-4.355,15.083-0.262c4.237,4.093,4.354,10.845,0.262,15.083c-0.086,0.089-0.173,0.176-0.262,0.262 l-53.333,53.333C314.96,169.579,312.251,170.707,309.424,170.713z" />
                    <circle style="fill:#097b20;" cx="394.758" cy="74.713" r="53.333" />
                    </svg>
                    <span class="tt_tick_prev" id="tt_tick_prev">NOMBRE DEL TICKET</span>
                    <span class="d-none" id="Desc_tick">Hola soy una descripcion de ticket owo</span>
                    <img src="assets/cmn.png" class="d-none" id="img_ticket_prev">
                    <input type="text" class="d-none" id="Prioridad" value="Media">
                    <input type="text" class="d-none" id="Tema" value="Desconocido">
                    <input type="text" class="d-none" id="Estado" value="Abierto">
                    <input type="date" class="d-none" id="Fecha_tick" value="2024-04-10">
                    <input type="text" class="d-none" disabled id="id_ticket_prev" value="1">
                    <section class="esp_tick">
                        <span>Ticket Abierto</span>
                        <span>Prioridad: Media</span>
                    </section>
                </section>

                <!--Ticket en Proceso-->
                <section class="ticket_prev">
                    <svg class="icon_ticket_prev" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg"
                         xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512.092 512.092"
                         style="enable-background:new 0 0 512.092 512.092;" xml:space="preserve">
                    <path class="sombra_sv" style="fill:#FFA000;"
                          d="M396.784,446.553L266.011,115.886c-1.446-3.641-4.771-6.196-8.661-6.656L54.683,85.38 c-5.752-0.808-11.07,3.2-11.878,8.952c-0.018,0.13-0.034,0.261-0.048,0.392L0.091,436.057c-0.763,5.841,3.353,11.196,9.194,11.959 c0.085,0.011,0.171,0.021,0.256,0.03l373.333,42.667h1.216c5.521,0.024,10.148-4.168,10.667-9.664l2.773-29.589 C397.672,449.788,397.416,448.107,396.784,446.553z" />
                    <path class="ticket_sa tick_deg" style="fill:#ffffff;"
                          d="M469.424,94.724c-0.684-5.851-5.983-10.04-11.834-9.355c-0.031,0.004-0.061,0.007-0.092,0.011 l-91.733,10.795L94.832,128.046c-5.801,0.659-9.994,5.86-9.408,11.669l32,341.333c0.519,5.496,5.146,9.688,10.667,9.664h1.216 l373.333-42.667c5.853-0.671,10.053-5.96,9.382-11.813c-0.005-0.045-0.01-0.089-0.016-0.134L469.424,94.724z" />
                    <path style="fill:#455A64;"
                          d="M309.424,170.713c-5.891,0.011-10.675-4.757-10.686-10.648c-0.005-2.84,1.123-5.565,3.134-7.571 l53.333-53.333c4.093-4.237,10.845-4.355,15.083-0.262c4.237,4.093,4.354,10.845,0.262,15.083c-0.086,0.089-0.173,0.176-0.262,0.262 l-53.333,53.333C314.96,169.579,312.251,170.707,309.424,170.713z" />
                    <circle style="fill:#ff8000;" cx="394.758" cy="74.713" r="53.333" />
                    </svg>
                    <span class="tt_tick_prev" id="tt_tick_prev">NOMBRE DEL TICKET</span>
                    <span class="d-none" id="Desc_tick">Hola soy una descripcion de ticket owo</span>
                    <img src="assets/cmn.png" class="d-none" id="img_ticket_prev">
                    <input type="text" class="d-none" id="Prioridad" value="Alta">
                    <input type="text" class="d-none" id="Tema" value="Negocio">
                    <input type="text" class="d-none" id="Estado" value="En Proceso">
                    <input type="date" class="d-none" id="Fecha_tick" value="2024-04-28">
                    <input type="text" class="d-none" disabled id="id_ticket_prev" value="">
                    <section class="esp_tick">
                        <span>Ticket En Proceso</span>
                        <span>Prioridad: Alta</span>
                    </section>
                </section>

                <!--Ticket Cerrado-->
                <section class="ticket_prev">
                    <svg class="icon_ticket_prev" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg"
                         xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512.092 512.092"
                         style="enable-background:new 0 0 512.092 512.092;" xml:space="preserve">
                    <path class="sombra_sv" style="fill:#c02e2e;"
                          d="M396.784,446.553L266.011,115.886c-1.446-3.641-4.771-6.196-8.661-6.656L54.683,85.38 c-5.752-0.808-11.07,3.2-11.878,8.952c-0.018,0.13-0.034,0.261-0.048,0.392L0.091,436.057c-0.763,5.841,3.353,11.196,9.194,11.959 c0.085,0.011,0.171,0.021,0.256,0.03l373.333,42.667h1.216c5.521,0.024,10.148-4.168,10.667-9.664l2.773-29.589 C397.672,449.788,397.416,448.107,396.784,446.553z" />
                    <path class="tick_deg" style="fill:#ffffff;"
                          d="M469.424,94.724c-0.684-5.851-5.983-10.04-11.834-9.355c-0.031,0.004-0.061,0.007-0.092,0.011 l-91.733,10.795L94.832,128.046c-5.801,0.659-9.994,5.86-9.408,11.669l32,341.333c0.519,5.496,5.146,9.688,10.667,9.664h1.216 l373.333-42.667c5.853-0.671,10.053-5.96,9.382-11.813c-0.005-0.045-0.01-0.089-0.016-0.134L469.424,94.724z" />
                    <path class="somb_ticket" style="fill:#455A64;"
                          d="M309.424,170.713c-5.891,0.011-10.675-4.757-10.686-10.648c-0.005-2.84,1.123-5.565,3.134-7.571 l53.333-53.333c4.093-4.237,10.845-4.355,15.083-0.262c4.237,4.093,4.354,10.845,0.262,15.083c-0.086,0.089-0.173,0.176-0.262,0.262 l-53.333,53.333C314.96,169.579,312.251,170.707,309.424,170.713z" />
                    <circle style="fill:#a70909;" cx="394.758" cy="74.713" r="53.333" />
                    </svg>
                    <span class="tt_tick_prev" id="tt_tick_prev">NOMBRE DEL TICKET</span>
                    <span class="d-none" id="Desc_tick">Hola soy una descripcion de ticket owo</span>
                    <img src="assets/cmn.png" class="d-none" id="img_ticket_prev">
                    <input type="text" class="d-none" id="Prioridad" value="Baja">
                    <input type="text" class="d-none" id="Tema" value="Editar">
                    <input type="text" class="d-none" id="Estado" value="Cerrado">
                    <input type="date" class="d-none" id="Fecha_tick" value="2024-04-20">
                    <input type="text" class="d-none" disabled id="id_ticket_prev" value="">
                    <section class="esp_tick">
                        <span>Ticket Cerrado</span>
                        <span>Prioridad: Baja</span>
                    </section>
                </section>
            </div>
        </div>

        <!--Vizualizacion del ticket-->
        <div class="ticket_viz" id="ticket_viz">
            <section class="ticket_conviz">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="36.5 35 183 182" preserveAspectRatio="none">
                <path
                    d="M156.7,216H48a8,8,0,0,1-8-8V48a8,8,0,0,1,8-8H208a8,8,0,0,1,8,8V156.7a7.9,7.9,0,0,1-2.3,5.6l-51.4,51.4A7.9,7.9,0,0,1,156.7,216Z"
                    fill="#fff" stroke="#000" stroke-linecap="round" stroke-linejoin="round" stroke-width="1" />
                <polyline fill="none" points="215.3 160 160 160 160 215.3" stroke="#000" stroke-linecap="round"
                          stroke-linejoin="round" stroke-width="1" />
                </svg>
                <section class="tt_tick_viz" id="tt_tick_viz">Nombre del Ticket</section>
                <section class="cont_tick">
                    <section class="imgfech_tick">
                        <img class="img_ticket" src="" alt="img_ticket" id="img_ticket">
                        <section>Fecha que se ralizo: <span id="fecha_tick_viz"></span></section>
                    </section>
                    <section class="information_ticket">
                        <span class="Tem_tick_viz" id="Tem_tick_viz" data-bs-toggle="tooltip" data-bs-placement="right"
                              data-bs-title="CLICK PARA EDITAR TEMA">Tema</span>
                        <span class="Pri_tick_viz" id="Pri_tick_viz" data-bs-toggle="tooltip" data-bs-placement="right"
                              data-bs-title="CLICK PARA EDITAR PRIORIDAD">Prioridad del Ticket</span>
                        <span class="Est_tick_viz" id="Est_tick_viz" data-bs-toggle="tooltip" data-bs-placement="right"
                              data-bs-title="CLICK PARA EDITAR ESTADO">Estado del ticket</span>
                    </section>
                </section>
                <span class="Des_tick" name="" id="Des_tick_viz" data-bs-toggle="tooltip" data-bs-placement="left"
                      data-bs-title="CLICK PARA EDITAR DESCRIPCION">Descripcion del Ticket</span>
            </section>
        </div>

        <!--Ventana de edicion-->
        <div class="edicion_tick" id="edicion_tick">
            <form action="" class="form_ed_tick" id="form_ed_tick" method="post">
                <span class="tt_form" id="tt_form">Editar</span>
                <section class="edit_tem" id="edit_tem">
                    <span id="amd_tem"></span>
                    <select class="sect_edt" id="filtr_tem_edt">
                        <option selected disabled hidden>Escoger nuevo Tema</option>
                        <option value="Negocio">Problemas con los negocios</option>
                        <option value="Desconocido">Errores Desconocidos</option>
                        <option value="Ejecucion">Errores de Ejecucion</option>
                        <option value="Editar">Falla al Editar</option>
                        <option value="Error">Paginas de Error</option>
                        <option value="Cuentas">Problemas con las cuentas</option>
                        <option value="Funcionamiento">Confución con el Funcionamiento</option>
                        <option value="Otro">Otro</option>
                        <option value="General">Cualquiera</option>
                    </select>
                    <section class="btns_edt">
                        <button type="button" class="btn_canc_adm">Cancelar</button>
                        <button type="submit" class="btn_env_adm">Enviar</button>
                    </section>
                </section>
                <section class="edit_pri" id="edit_pri">
                    <span id="amd_pri"></span>
                    <section class="btns_edt">
                        <button type="button" class="btn_canc_adm">Cancelar</button>
                        <button class="btn_verd" id="pri_baj_edt" type="submit">Baja</button>
                        <button class="btn_amar" id="pri_med_edt" type="submit">Media</button>
                        <button class="btn_rojo" id="pri_alt_edt" type="submit">Alta</button>
                    </section>
                </section>
                <section class="edit_est" id="edit_est">
                    <span id="amd_est"></span>
                    <section class="btns_edt">
                        <button type="button" class="btn_canc_adm">Cancelar</button>
                        <button class="btn_verd" id="est_abi_edt" type="submit">Abierto</button>
                        <button class="btn_amar" id="est_pro_edt" type="submit">En Proceso</button>
                        <button class="btn_rojo" id="est_cer_edt" type="submit">Cerrado</button>
                    </section>
                </section>
                <section class="edit_com" id="edit_com">
                    <span>Descripcion del ticket:</span>
                    <textarea class="txt_ar_edit" name="" id="Desc_edt">Lorem ipsum dolor sit amet consectetur adipisicing
                    elit. Suscipit aliquid aut quia optio ullam dolorem! Dolores dicta voluptatem dolorem porro soluta
                    laudantium eaque quae impedit sint vitae, a earum necessitatibus.</textarea>
                    <section class="btns_edt">
                        <button type="button" class="btn_canc_adm">Cancelar</button>
                        <button type="submit" class="btn_env_adm" id="btn_env_adm">Enviar</button>
                    </section>
                </section>
                <input type="text" disabled id="id_ticket">
                <input type="text" disabled id="tem_edt">
                <input type="text" disabled id="pri_edt">
                <input type="text" disabled id="est_edt">
                <input type="text" disabled id="com_edt">
            </form>
        </div>
        <script src="js/Tickets.js"></script>
        <script>
            // Activar todos los tooltips
            var tooltips = new bootstrap.Tooltip(document.body, {
                selector: '[data-bs-toggle="tooltip"]',
            });
        </script>
    </body>
</html>
