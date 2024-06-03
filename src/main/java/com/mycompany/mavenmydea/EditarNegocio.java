/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import Clases.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//imports para validar
import java.util.Arrays;
import java.util.List;

//expresiones
import java.util.regex.Pattern;

import org.owasp.encoder.Encode;

/**
 *
 * @author diego
 */
@WebServlet(urlPatterns = {"/EditarNegocio"})
public class EditarNegocio extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            //Datos del negocio
            String Nombre = request.getParameter("N_Neg_cnf");
            request.setAttribute("valorNomN", Nombre);
            String Tipo = request.getParameter("TP_cnf");
            List<String> opciones_tipoNegocio = Arrays.asList("Abarrotes", "Materia_Prima", "Restaurantes", "SyP", "Cafeteria", "Catering", "Panaderia", "OyF", "Otro");
            request.setAttribute("valorTipoN", Tipo);
            String Descripcion = request.getParameter("desc");
            
            //Horario
            String AbiertoL = request.getParameter("Abierto_L");
            String CerradoL = request.getParameter("Cerrado_L");
            String DiaCerradoL = request.getParameter("cerr_lun");
            String SheL = request.getParameter("she_lun");
            
            String AbiertoM = request.getParameter("Abierto_M");
            String CerradoM = request.getParameter("Cerrado_M");
            String DiaCerradoM = request.getParameter("cerr_mar");
            String SheM = request.getParameter("she_mar");
            
            String AbiertoMI = request.getParameter("Abierto_Mi");
            String CerradoMI = request.getParameter("Cerrado_Mi");
            String DiaCerradoMI = request.getParameter("cerr_mie");
            String SheMI = request.getParameter("she_mie");
            
            String AbiertoJ = request.getParameter("Abierto_J");
            String CerradoJ = request.getParameter("Cerrado_J");
            String DiaCerradoJ = request.getParameter("cerr_jue");
            String SheJ = request.getParameter("she_jue");
            
            String AbiertoV = request.getParameter("Abierto_V");
            String CerradoV = request.getParameter("Cerrado_V");
            String DiaCerradoV = request.getParameter("cerr_vie");
            String SheV = request.getParameter("she_vie");
            
            String AbiertoS = request.getParameter("Abierto_S");
            String CerradoS = request.getParameter("Cerrado_S");
            String DiaCerradoS = request.getParameter("cerr_sab");
            String SheS = request.getParameter("she_sab");
            
            String AbiertoD = request.getParameter("Abierto_D");
            String CerradoD = request.getParameter("Cerrado_D");
            String DiaCerradoD = request.getParameter("cerr_dom");
            String SheD = request.getParameter("she_dom");
            
            //Direccion
            String Cp = request.getParameter("cpp");
            String Colonia = request.getParameter("colonia");
            String Numero = request.getParameter("numero");
            String Calle = request.getParameter("calle");
            String Iextra = request.getParameter("iextra");
            
            //contactos
            String Telefono = request.getParameter("tel_loc_cnf");
            String Correo = request.getParameter("mail_loc_cnf");
            String Facebook = request.getParameter("face_loc_cnf");
            String Instagram = request.getParameter("inst_loc_cnf");
            String Twitter = request.getParameter("twit_loc_cnf");
            String Pagina = request.getParameter("web_loc_cnf");

            //Imagenes
            String logo = request.getParameter("logo");
            String img1 = request.getParameter("img1");
            String img2 = request.getParameter("img2");
            String img3 = request.getParameter("img3"); 
            
            //Antiguos
            String alogo = request.getParameter("alogo");
            String aimg1 = request.getParameter("aimagen1");
            String aimg2 = request.getParameter("aimagen2");
            String aimg3 = request.getParameter("aimagen3"); 
            
            String Nombrea = request.getParameter("anom");
            String Tipoa = request.getParameter("atipo");
            String Descripciona = request.getParameter("adesc");
            
            String tela = request.getParameter("atel");
            String correoa = request.getParameter("acorreo");
            String fba = request.getParameter("afb");
            String iga = request.getParameter("aig");
            String twa = request.getParameter("atw");
            String weba = request.getParameter("aweb");
            
            String Cpa = request.getParameter("acp");
            String Coloniaa = request.getParameter("acolonia");
            String Numeroa = request.getParameter("anumero");
            String Callea = request.getParameter("acalle");
            String Iextraa = request.getParameter("aiextra");
            
            String did = request.getParameter("did");
            String idn = request.getParameter("idn");
            
            
            //Expresiones regulares
                //Contactos
                    //Telefono
                    String regex_Telefono = "^[0-9]{10}$";
                    //Correo
                    String regex_Correo = "^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)*(\\.[a-zA-Z]{2,})$";
                    //Facebook
                    String regex_Facebook = "^https?://(www\\.)?facebook\\.com/[a-zA-Z0-9.-]+(/\\S*)?$";
                    //Instagram 
                    String regex_Instagram = "^https://www.instagram.com/[a-zA-Z0-9_\\.]+$";
                    //Twitter
                    String regex_Twitter = "^https?://twitter\\.com/[a-zA-Z0-9_]{1,15}$";
                    //Pagina
                    String regex_Pagina = "^https?://[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}(/\\S*)?$";
            
            boolean error = false;
            
            if(Nombre.equals("")){
                Nombre=Nombrea;
            } else {
                if(Nombre != null){
                    Nombre = Nombre.trim();
                    if(Nombre.isEmpty()){
                        request.setAttribute("error_nombreN_Vacio", "Ingrese el nombre de su local");
                        error = true;
                    }
                    if(Nombre.length() > 60){
                        request.setAttribute("error_nombreN_Largo", "Solo se permiten hasta 60 caracteres");
                        error = true;
                    }
                } else {
                    request.setAttribute("error_nombreN_Vacio", "Ingrese el nombre de su local");
                    error = true;
                }
            }
            
            //Tipo de negocio
            //Que no este vacio
            if(Tipo == null || Tipo.isEmpty()){
                request.setAttribute("error_tipoN_Invalido", "Seleccione su tipo de negocio");
                error = true;
            }
            //Que sea valido el value
            if (!opciones_tipoNegocio.contains(Tipo)){
                request.setAttribute("error_tipoN_Invalido", "Seleccione un tipo de negocio valido");
                error = true;
            }
            
            if(Descripcion.equals("")){
                Descripcion=Descripciona;
            } else {
                if(Descripcion != null){
                    Descripcion = Descripcion.trim();
                    if(Descripcion.isEmpty()){
                        request.setAttribute("error_descripcionN_Vacio", "Ingrese la descripcion de su negocio");
                        error = true;
                    }
                    if(Descripcion.length() > 500){
                        request.setAttribute("error_descripcionN_Largo", "Solo se permiten hasta 500 caracteres");
                        error = true;
                    }
                } else {
                    request.setAttribute("error_descripcionN_Vacio", "Ingrese la descripcion de su local");
                    error = true;
                }
            }
            if(Correo.equals("")){
                Correo=correoa;
            } else {
                if(Correo != null){
                        Correo = Correo.trim();
                        //Que no este vacio
                        if(Correo.isEmpty()){
                            request.setAttribute("error_correoN_Vacio", "El campo no debe de estar vacio");
                            error = true;
                        }
                        //Que sea correcto el correo
                        if(!Pattern.matches(regex_Correo, Correo)){
                            request.setAttribute("error_correoN_Invalido", "Ingrese un correo electronico valido");
                            error = true;
                        } 
                    } else {
                        request.setAttribute("error_correoN_Vacio", "El campo no debe de estar vacio");
                        error = true;
                    }
            }
            if(Telefono.equals("")){
                Telefono=tela;
            } else {
                if(Telefono != null){
                    Telefono = Telefono.trim();
                    //Que no este vacio
                    if(Telefono.isEmpty()){
                        request.setAttribute("error_telefonoN_Vacio", "El campo no debe de estar vacio");
                        error = true;
                    }
                    //Que sea valido el telefono
                    if(!Pattern.matches(regex_Telefono, Telefono)){
                        request.setAttribute("error_telefonoN_Invalido", "Ingrese un numero de telefono valido");
                        error = true;
                    }
                } else {
                    request.setAttribute("error_telefonoN_Vacio", "El campo no debe de estar vacio");
                    error = true;
                }
            }
            if(img1.equals("")){
                img1=aimg1;
            }
            if(Facebook.equals("")){
                Facebook=fba;
            } else {
                if(Facebook != null){
                    Facebook = Facebook.trim();
                    if(!Pattern.matches(regex_Facebook, Facebook)){
                        request.setAttribute("error_facebookN_Invalido", "Ingrese un link de facebook valido");
                        error = true;
                    }
                }
            }
            if(Instagram.equals("")){
                Instagram=iga;
            } else {
                if(Instagram != null){
                    Instagram = Instagram.trim();
                    if(!Pattern.matches(regex_Instagram, Instagram)){
                        request.setAttribute("error_instagramN_Invalido", "Ingrese un link de instagram valido");
                        error = true;
                    }
                }
            }
            if(Twitter.equals("")){
                Twitter=twa;
            } else {
                if(Twitter != null){
                    Twitter = Twitter.trim();
                    if(!Pattern.matches(regex_Twitter, Twitter)){
                        request.setAttribute("error_twitterN_Invalido", "Ingrese un link de twitter valido");
                        error = true;
                    }
                }
            }
            if(Pagina.equals("")){
                Pagina=weba;
            } else {
                if(Pagina != null){
                    Pagina = Pagina.trim();
                    if(!Pattern.matches(regex_Pagina, Pagina)){
                        request.setAttribute("error_paginaN_Invalido", "Ingrese un link valido");
                        error = true;
                    }
                }
            }
            if(logo.equals("")){
                logo=alogo;
            }
            if(img2.equals("")){
                img2=aimg2;
            }
            if(img3.equals("")){
                img3=aimg3;
            }
            if(Cp.equals("")){
                Cp=Cpa;
            } else {
                if(Cp != null){
                    Cp = Cp.trim();
                    if(Cp == null || Cp.isEmpty() || !Cp.matches("\\d+") || Cp.length() != 5){
                        request.setAttribute("error_codigoPostalN_Invalido", "Ingrese un codigo postal");
                        error = true;
                    }
                } else {
                    request.setAttribute("error_codigoPostalN_Invalido", "Ingrese un codigo postal");
                    error = true;
                }
            }
            if(Colonia.equals("")){
                Colonia=Coloniaa;
            } else {
                if(Colonia != null){
                    Colonia = Colonia.trim();

                    if (Colonia == null || Colonia.isEmpty()){
                        request.setAttribute("error_coloniaN_Vacio", "Ingrese la colonia donde se ubica su local");
                        error = true;
                    }

                    if (Colonia == null || Colonia.length() > 80){
                        request.setAttribute("error_coloniaN_Largo", "Solo se permite un maximo de 80 caracteres");
                        error = true;
                    }
                } else {
                    request.setAttribute("error_coloniaN_Vacio", "Ingrese la colonia donde se ubica su local");
                    error = true;
                }
            }
            if(Calle.equals("")){
                Calle=Callea;
            } else {
                if(Calle != null){
                    Calle = Calle.trim();
                    if(Calle == null || Calle.isEmpty()){
                        request.setAttribute("error_calleN_Vacio", "Ingrese la calle donde esta ubicado su local");
                        error = true;
                    }

                    if(Calle == null || Calle.length() > 100){
                        request.setAttribute("error_calleN_Largo", "Solo se permite un maximo de 100 caracteres");
                        error = true;
                    }
                } else {
                    request.setAttribute("error_calleN_Vacio", "Ingrese la calle donde esta ubicado su local");
                    error = true;
                }
            }
            if(Numero.equals("")){
                Numero=Numeroa;
            } else {
                if(Numero != null){
                    Numero = Numero.trim();
                    if(Numero == null || Numero.isEmpty() || !Numero.matches("\\d+")){
                        request.setAttribute("error_numeroN_Invalido", "Ingrese el numero de su calle");
                        error = true;
                    }
                } else {
                    request.setAttribute("error_numeroN_Invalido", "Ingrese el numero de su calle");
                    error = true;
                }
            }
            if(Iextra.equals("")){
                Iextra=Iextraa;
            } else {
                Iextra = Iextra.trim();
                if(Iextra.length() > 300){
                    request.setAttribute("error_infoExtraN_Largo", "Se permite un maximo de 300 caracteres");
                    error = true;
                }
            }
             
            
            String especialL="";
            String especialM="";
            String especialMI="";
            String especialJ="";
            String especialV="";
            String especialS="";
            String especialD="";
            
            if(SheL == null && DiaCerradoL == null ){       
                especialL="No";
            }else if(DiaCerradoL==null){               
                especialL="Sin horario especifico";
                AbiertoL = "No";
                CerradoL = "No";
            }else{               
                especialL="Cerrado";  
                AbiertoL = "No";
                CerradoL = "No";
            }
            
            if(SheM == null && DiaCerradoM == null ){
                especialM="No";            
            }else if(DiaCerradoM==null){  
                especialM="Sin horario especifico";
                AbiertoM = "No";
                CerradoM = "No";
            }else{
                especialM="Cerrado";
                AbiertoM = "No";
                CerradoM = "No";
            }
           
            if(SheMI == null && DiaCerradoMI == null ){
                especialMI="No";
            }else if(DiaCerradoMI==null){
                especialMI="Sin horario especifico";
                AbiertoMI = "No";
                CerradoMI = "No";
            }else{
                especialMI="Cerrado";
                AbiertoMI = "No";
                CerradoMI = "No";
            }
       
            if(SheJ == null && DiaCerradoJ == null ){
                especialJ="No";
            }else if(DiaCerradoJ==null){
                especialJ="Sin horario especifico";
                AbiertoJ = "No";
                CerradoJ = "No";
            }else{
                especialJ="Cerrado";
                AbiertoJ = "No";
                CerradoJ = "No";
            }
           
            if(SheV == null && DiaCerradoV == null ){
                especialV="No";
            }else if(DiaCerradoV==null){
                especialV="Sin horario especifico";
                AbiertoV = "No";
                CerradoV = "No";
            }else{
                especialV="Cerrado";
                AbiertoV = "No";
                CerradoV = "No";
            }
            
            if(SheS == null && DiaCerradoS == null ){
                especialS="No";
            }else if(DiaCerradoS==null){
                especialS="Sin horario especifico";
                AbiertoS = "No";
                CerradoS = "No";
            }else{
                especialS="Cerrado";
                AbiertoS = "No";
                CerradoS = "No";
            }
            
            if(SheD == null && DiaCerradoD == null ){
                especialD="No";
            }else if(DiaCerradoD==null){
                especialD="Sin horario especifico";
                AbiertoD = "No";
                CerradoD = "No";
            }else{
                especialD="Cerrado";
                AbiertoD = "No";
                CerradoD = "No";
            }
            
            if(error){
                request.getRequestDispatcher("Editar_Negocio.jsp").forward(request, response);
            } else {
                switch(Tipo){
                case "Abarrotes":
                    Tipo="1";
                    break;
                case "Materia_Prima":
                    Tipo="2";
                    break;
                case "Restaurantes":
                    Tipo="3";
                    break;
                case "SyP":
                    Tipo="4";
                    break;
                case "Cafeteria":
                    Tipo="5";
                    break;
                case "Catering":
                    Tipo="6";
                    break;
                case "Panaderia":
                    Tipo="7";
                    break;
                case "OyF":
                    Tipo="8";
                    break;
                case "Otro":
                    Tipo="9";
                    break;
            }
                Conexion con = new Conexion();
                Connection c;
                con.setCon();
                c=con.getCon();


               int[] hid = new int[7];

               hid=con.Hid(idn);

               con.EHorario(AbiertoL, CerradoL, especialL, "Lunes", hid[0]);
               con.EHorario(AbiertoM, CerradoM, especialM, "Martes", hid[1]);
               con.EHorario(AbiertoMI, CerradoMI, especialMI, "Miercoles", hid[2]);
               con.EHorario(AbiertoJ, CerradoJ, especialJ, "Jueves", hid[3]);
               con.EHorario(AbiertoV, CerradoV, especialV, "Viernes", hid[4]);
               con.EHorario(AbiertoS, CerradoS, especialS, "Sabado", hid[5]);
               con.EHorario(AbiertoD, CerradoD, especialD, "Domingo", hid[6]);




                String mensaje = con.ENegocio(Nombre, Descripcion, Colonia, Calle, Numero, Iextra, Cp, Pagina, logo, Tipo, 
                        Facebook, Twitter, Instagram, img1, img2, Correo, img3, Telefono, tela, correoa, Nombrea, did);

                try {
                   c.close();
               } catch (SQLException ex) {
                   Logger.getLogger(CrearNegocio.class.getName()).log(Level.SEVERE, null, ex);
               }
                //
                if(mensaje==null){
                    
                    mensaje="Negocio actualizado con exito";
                    
                  request.setAttribute("mensaje", mensaje);
                  request.setAttribute("idn", idn);
                   
                   RequestDispatcher rd = request.getRequestDispatcher("Editar_Negocio.jsp");
                   rd.forward(request, response);
                
                    
                //
                }else{
                   request.setAttribute("mensaje", mensaje);
                   request.setAttribute("idn", idn);
                   RequestDispatcher rd = request.getRequestDispatcher("Editar_Negocio.jsp");
                   rd.forward(request, response);
                }
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

/*

out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CrearNegocio</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> Datos del negocio</h1>");
            out.println("Nombre nuevo: " + Nombre + " Nombre antiguo: "+Nombrea+" Descripcion nueva: "+ Descripcion + " Descripcion antigua: "+Descripciona+" "
                    + "Tipo nuevo: "+Tipo+" Tipo antiguo: "+Tipoa);
            out.println("<h1> Direccion del negocio</h1>");
            out.println("CP nuevo: " + Cp + " Cp antiguo: "+Cpa+" Colonia nueva"+ Colonia + " Colonia antigua: "+Coloniaa+" Calle nueva: "+Calle+" Calle antigua: "+Callea+" "
                    + "Numero nuevo "+ Numero + " Numero antiguo: "+Numeroa+" Indicaciones extra nuevas: "+Iextra+" Indiaciones extra nuevas: "+Iextraa);
            out.println("<h1> Contactos del negocio</h1>");
            out.println("Telefono nuevo: " + Telefono + " Telefono antiguo: "+tela+" Correo nuevo "+ Correo + " Correo antiguo: "+correoa+" Facebook nuevo: "+Facebook+" "
                    + "Facebook antiguo: "+fba+" Instagram nuevo: "+ Instagram + " Instagram antiguo: "+iga+" Twitter nuevo: "+Twitter+" Twitter antiguo: "+twa+""
                            + " Pagina web nueva "+Pagina+" Pagina web antigua: "+weba);
            out.println("<h1> Imagenes del negocio nuevas</h1>");
            out.println("<h3>Logo:</h1>");
            out.println("<img src="+logo+">");
            out.println("<h3>Imagen 1:</h1>");
            out.println("<img src="+img1+">");
            out.println("<h3>Imagen 2:</h1>");
            out.println("<img src="+img2+">");
            out.println("<h3>Imagen 3:</h1>");
            out.println("<img src="+img3+">");
            
            out.println("<h1> Imagenes del negocio antiguas: </h1>");
            out.println("<h3>Logo:</h1>");
            out.println("<img src="+alogo+">");
            out.println("<h3>Imagen 1:</h1>");
            out.println("<img src="+aimg1+">");
            out.println("<h3>Imagen 2:</h1>");
            out.println("<img src="+aimg2+">");
            out.println("<h3>Imagen 3:</h1>");
            out.println("<img src="+aimg3+">");
            
            out.println("<h1>Lunes:</h1>");
            if(SheL == null && DiaCerradoL == null ){
            out.println("Horario de " + AbiertoL + " a "+ CerradoL);
            }else if(DiaCerradoL==null){
             out.println("Sin horario especifico los Lunes");
            }else{
            out.println("Cerrado los Lunes");
            }
            
           out.println("<h1>Martes:</h1>");
            if(SheM == null && DiaCerradoM == null ){
            out.println("Horario de " + AbiertoM + " a "+ CerradoM);
            }else if(DiaCerradoM==null){
             out.println(" Sin horario especifico los Martes");
            }else{
            out.println(" Cerrado los Martes");
            }
           
            out.println("<h1>Miercoles:</h1>");
            if(SheMI == null && DiaCerradoMI == null ){
            out.println("Horario de " + AbiertoMI + " a "+ CerradoMI);
            }else if(DiaCerradoMI==null){
             out.println("Sin horario especifico los Miercoles");
            }else{
            out.println(" Cerrado los Miercoles");
            }
       out.println("<h1>Juevebes:</h1>");
            if(SheJ == null && DiaCerradoJ == null ){
            out.println("Horario de " + AbiertoJ + " a "+ CerradoJ);
            }else if(DiaCerradoJ==null){
             out.println(" Sin horario especifico los Jueves");
            }else{
            out.println("Cerrado los Jueves");
            }
           out.println("<h1>Viernes:</h1>");
            if(SheV == null && DiaCerradoV == null ){
            out.println("Horario de " + AbiertoV + " a "+ CerradoV);
            }else if(DiaCerradoV==null){
             out.println(" Sin horario especifico los Viernes");
            }else{
            out.println(" Cerrado los Viernes");
            }
            out.println("<h1>Sabadazo venga la alegria:</h1>");
            if(SheS == null && DiaCerradoS == null ){
            out.println("Horario de " + AbiertoS + " a "+ CerradoS);
            }else if(DiaCerradoS==null){
             out.println(" Sin horario especifico los Sabados ");
            }else{
            out.println(" Cerrado los Sabados ");
            }
            out.println("<h1>Dormingo:</h1>");
            if(SheD == null && DiaCerradoD == null ){
            out.println("Horario de " + AbiertoD + " a "+ CerradoD + "");
            }else if(DiaCerradoD==null){
             out.println(" Sin horario especifico los Domingos");
            }else{
            out.println(" Cerrado los Domingos");
            }
            
            out.println("</body>");
            out.println("</html>");
*/
