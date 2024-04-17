/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import Clases.Conexion;
import Clases.Persona;
import Clases.Usuario;
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
import javax.servlet.http.HttpSession;

//necesario para validar
import java.util.Arrays;
import java.util.List;

//expresiones
import java.util.regex.Pattern;

//Caducidad 
import java.util.Random;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;

import org.owasp.encoder.Encode;


/**
 *
 * @author Diego
 */
@WebServlet(urlPatterns = {"/EditarCuenta2"})
public class EditarCuenta2 extends HttpServlet {

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
            String nombreu = request.getParameter("nomu");
            String encnombreu = Encode.forHtml(nombreu);
            request.setAttribute("valorNomu", nombreu);
            String nombrec = request.getParameter("nomc");
            String encnombrec = Encode.forHtml(nombrec);
            request.setAttribute("valorNomc", nombrec);
            String correo = request.getParameter("correo");
            String enccorreo = Encode.forHtml(correo);
            request.setAttribute("valorCorr", correo);
            String descripcion = request.getParameter("desc");
            String encdescripcion = Encode.forHtml(descripcion);
            request.setAttribute("valorDesc", descripcion);
            String telefono = request.getParameter("telefono");
            String enctelefono = Encode.forHtml(telefono);
            request.setAttribute("valorTelef", telefono);
            String facebook = request.getParameter("fb");
            String encfacebook = Encode.forHtml(facebook);
            request.setAttribute("valorFb", facebook);
            String instagram = request.getParameter("ig");
            String encinstagram = Encode.forHtml(instagram);
            request.setAttribute("valorIg", instagram);
            String twitter = request.getParameter("tw");
            String enctwitter = Encode.forHtml(twitter);
            request.setAttribute("valorTwit", twitter);
            String web = request.getParameter("web");
            String encweb = Encode.forHtml(web);
            request.setAttribute("valorWeb", web);
            String foto = request.getParameter("foto");
            request.setAttribute("valorFot", foto);
            
            
            //Expresiones regulares
                //Solo letras
                String regex_Letras = "^[a-zA-Z ]*$";
                //Correo
                String regex_Correo = "^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)*(\\.[a-zA-Z]{2,})$";
                //Telefono
                String regex_Telefono = "^[0-9]{10}$";
                //Contraseña
                String regex_Contraseña = "^(?=.*[0-9]).*$";
                
                //Redes sociales
                    //Facebook
                    String regex_Facebook = "^https?://(www\\.)?facebook\\.com/[a-zA-Z0-9.-]+(/\\S*)?$";
                    //Instagram 
                    String regex_Instagram = "^https://www.instagram.com/[a-zA-Z0-9_\\.]+$";
                    //Twitter
                    String regex_Twitter = "^https?://twitter\\.com/[a-zA-Z0-9_]{1,15}$";
                    //Pagina
                    String regex_Pagina = "^https?://[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}(/\\S*)?$";
                    
            //Codigo
            String codigo = request.getParameter("codigo");
            String enccodigo = Encode.forHtml(codigo);
            
            HttpSession misession= (HttpSession) request.getSession();
            Usuario usuario= (Usuario) misession.getAttribute("usuario");
            String nombreua = usuario.getUsu_nom();
            Persona per= (Persona) misession.getAttribute("persona");
            String correoa = per.getPer_correo();
            String fotoa = per.getPer_foto();
            String telefonoa = per.getPer_telefono();
            String nombreca = per.getPer_nombrereal();
            String fba = per.getPer_fb();
            String iga = per.getPer_ig();
            String twa = per.getPer_twitter();
            String weba = per.getPer_web();
            String desca = per.getPer_descripcion();
            
            
            boolean error = false;
            
            //Correo
            if(enccorreo.equals("")){
                enccorreo=correoa;
            } else {
                enccorreo = enccorreo.trim();
                if (!Pattern.matches(regex_Correo, enccorreo)) {
                    request.setAttribute("error_correo_Invalido", "Ingrese un correo valido");
                    error = true;
                } else if (!enccorreo.equals(correoa) && codigo != null) { // Verifica si el correo ha cambiado
                    // Confirmación del código
                    String codigoCompletado = (String) request.getSession().getAttribute("confirmationCode");
                    LocalDateTime generationTime = (LocalDateTime) request.getSession().getAttribute("generationTime");

                    // Verifica si han pasado más de 5 minutos
                    if (ChronoUnit.MINUTES.between(generationTime, LocalDateTime.now()) > 5) {
                        request.setAttribute("error_codigo", "El código de confirmación ha caducado");
                        error = true;
                    } else if (!enccodigo.equals(codigoCompletado)) {
                        request.setAttribute("error_codigo", "El código de confirmación no es correcto");
                        error = true;
                    } else {
                        Conexion con = new Conexion();
                        Connection c;
                        con.setCon();
                        c=con.getCon();

                        String mensaje = con.EUsuario(encnombreu,nombreua,encnombrec,enccorreo,encdescripcion,enctelefono,encfacebook,encinstagram,enctwitter,
                                encweb,foto,correoa,telefonoa);

                        try {
                            c.close();
                        } catch (SQLException ex) {
                            Logger.getLogger(EditarCuenta.class.getName()).log(Level.SEVERE, null, ex);
                        }

                        if(mensaje==null){
                                mensaje="Datos actualizados correctamente";
                                request.setAttribute("mensaje", mensaje);

                                usuario.setUsu_nom(encnombreu);
                                per.setPer_correo(enccorreo);
                                per.setPer_descripcion(encdescripcion);
                                per.setPer_fb(encfacebook);
                                per.setPer_foto(foto);
                                per.setPer_ig(encinstagram);
                                per.setPer_nombrereal(encnombrec);
                                per.setPer_telefono(enctelefono);
                                per.setPer_twitter(enctwitter);
                                per.setPer_web(encweb);

                               RequestDispatcher rd = request.getRequestDispatcher("Editar_Cuenta.jsp");
                               rd.forward(request, response);


                            //
                            }else{
                               request.setAttribute("mensaje", mensaje);

                               RequestDispatcher rd = request.getRequestDispatcher("Editar_Cuenta.jsp");
                               rd.forward(request, response);
                            }
                        
                    }
                }
            }
            //Nombre usuario
            if(encnombreu.equals("")){
            encnombreu=nombreua;
            } else {
                if(encnombreu != null){
                    encnombreu = encnombreu.trim();
                    if(!nombreu.equals(nombreua)){

                        if(encnombreu.isEmpty()){
                            request.setAttribute("error_nombreU_Vacio", "El campo no debe de estar vacio");
                            error = true;
                        }

                        if(encnombreu.length() > 60){
                            request.setAttribute("error_nombreu_Largo", "Solo se permiten 60 caracteres");
                            error = true;
                        }
                    }
                }
            }
            
            //Nombre completo
            if(encnombrec.equals("")){
                encnombrec=nombreca;
            } else {
                if(encnombrec != null){
                    encnombrec = encnombrec.trim();
                    if(!encnombrec.equals(nombreca)){

                        if(encnombrec.isEmpty()){
                            request.setAttribute("error_nombreC_Vacio", "El campo no debe de estar vacio");
                            error = true;
                        }

                        if(encnombrec.length() > 60){
                            request.setAttribute("error_nombreC_Largo", "Solo se permiten 60 caracteres");
                            error = true;
                        }

                        if(!Pattern.matches(regex_Letras, encnombrec)){
                            request.setAttribute("error_nombreC_Invalido", "Solo se permiten letras");
                            error = true;
                        }
                    }
                }
            }
            //descripcion
            if(encdescripcion.equals("")){
                encdescripcion=desca;
            } else {
                if(encdescripcion != null){
                    if(encdescripcion.length() > 500){
                    request.setAttribute("error_descripcionCuenta_Largo", "Solo se permiten hasta 500 caracteres");
                    error = true;
                    }
                }
            }
            
            //telefono
            if(enctelefono.equals("")){
                enctelefono=telefonoa;
            } else {
                if(enctelefono != null){
                    enctelefono = enctelefono.trim();
                    if(!enctelefono.equals(telefonoa)){

                        if(enctelefono.isEmpty()){
                            request.setAttribute("error_telefono_Vacio", "El campo no debe de estar vacio");
                            error = true;
                        }
                        //
                        if(!Pattern.matches(regex_Telefono, enctelefono)){
                            request.setAttribute("error_telefono_Invalido", "Ingrese un numero de telefono valido");
                            error = true;
                        }
                    }
                }
            }
            
            if(encfacebook.equals("")){
                encfacebook=fba;
            } else {
                if(encfacebook != null){
                    encfacebook = encfacebook.trim();
                    if(!Pattern.matches(regex_Facebook, encfacebook)){
                        request.setAttribute("error_facebook_Invalido", "Ingrese un link de facebook valido");
                        error = true;
                    }
                }
            }
            if(encinstagram.equals("")){
                encinstagram=iga;
            }else {
                if(encinstagram != null){
                    encinstagram = encinstagram.trim();
                    if(!Pattern.matches(regex_Instagram, encinstagram)){
                        request.setAttribute("error_instagram_Invalido", "Ingrese un link de instagram valido");
                        error = true;
                    }
                }
            }
            
            if(enctwitter.equals("")){
                enctwitter=twa;
            }else {
                if(enctwitter != null){
                    enctwitter = enctwitter.trim();
                    if(!Pattern.matches(regex_Twitter, enctwitter)){
                        request.setAttribute("error_twitter_Invalido", "Ingrese un link de twitter valido");
                        error = true;
                    }
                }
            }
            
            if(encweb.equals("")){
                encweb=weba;
            } else {
                if(encweb != null){
                    encweb = encweb.trim();
                    if(!Pattern.matches(regex_Pagina, encweb)){
                        request.setAttribute("error_pagina_Invalido", "Ingrese un link valido");
                        error = true;
                    }
                }
            }
            if(foto.equals("")){
                foto=fotoa;
            }

            
            //errores y correos
            if(error){
                request.getRequestDispatcher("Editar_Cuenta.jsp").forward(request, response);
            } else {
                if (!enccorreo.equals(correoa)) {
                    request.getSession().setAttribute("nombreu", encnombreu);
                    request.getSession().setAttribute("nombrec", encnombrec);
                    request.getSession().setAttribute("correo", enccorreo);
                    request.getSession().setAttribute("descripcion", encdescripcion);
                    request.getSession().setAttribute("telefono", enctelefono);
                    request.getSession().setAttribute("facebook", encfacebook);
                    request.getSession().setAttribute("instagram", encinstagram);
                    request.getSession().setAttribute("twitter", enctwitter);
                    request.getSession().setAttribute("web", encweb);
                    request.getSession().setAttribute("foto", foto);

                    VerificacionCorreo_E emailSender = new VerificacionCorreo_E();
                    String confirmationCode = emailSender.sendConfirmationCode(request);
                    request.getSession().setAttribute("confirmationCode", confirmationCode);
                    request.getRequestDispatcher("ConfirmarCodigo_E.jsp").forward(request, response);
                    
                } else {

                    Conexion con = new Conexion();
                    Connection c;
                    con.setCon();
                    c=con.getCon();

                    String mensaje = con.EUsuario(encnombreu,nombreua,encnombrec,enccorreo,encdescripcion,enctelefono,encfacebook,encinstagram,enctwitter,
                            encweb,foto,correoa,telefonoa);

                    try {
                        c.close();
                    } catch (SQLException ex) {
                        Logger.getLogger(EditarCuenta.class.getName()).log(Level.SEVERE, null, ex);
                    }

                    if(mensaje==null){
                        mensaje="Datos actualizados correctamente";
                        request.setAttribute("mensaje", mensaje);

                        usuario.setUsu_nom(encnombreu);
                        per.setPer_correo(enccorreo);
                        per.setPer_descripcion(encdescripcion);
                        per.setPer_fb(encfacebook);
                        per.setPer_foto(foto);
                        per.setPer_ig(encinstagram);
                        per.setPer_nombrereal(encnombrec);
                        per.setPer_telefono(enctelefono);
                        per.setPer_twitter(enctwitter);
                        per.setPer_web(encweb);

                       RequestDispatcher rd = request.getRequestDispatcher("Editar_Cuenta.jsp");
                       rd.forward(request, response);


                    //
                    }else{
                       request.setAttribute("mensaje", mensaje);

                       RequestDispatcher rd = request.getRequestDispatcher("Editar_Cuenta.jsp");
                       rd.forward(request, response);
                    }
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
