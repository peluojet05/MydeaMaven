/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.mavenmydea;

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

/**
 *
 * @author Diego
 */
@WebServlet(name = "EditarTicket", urlPatterns = {"/EditarTicket"})
public class EditarTicket extends HttpServlet {

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
            
            String id = request.getParameter("hola");
            String uid = request.getParameter("hola6");
            String nombre = "";
            String tipo = request.getParameter("tipo");
            String atipo = request.getParameter("hola2");
            
            String prioridad = request.getParameter("prioridad");
            String aprioridad = request.getParameter("hola3");
            
            String estado = request.getParameter("estado");
            String aestado = request.getParameter("hola4");
            
            String comentario = request.getParameter("comentario");
            String acomentario = request.getParameter("hola5");
            
            if(tipo == null){
                tipo = atipo;
            }else{
                nombre="Cambio en el tema del ticket";
            }
            
            if(prioridad == null){
                prioridad=aprioridad;
            }else{
                nombre="Cambio en la prioridad del ticket";
            }
            
            
            if(estado==null){
                estado=aestado;
            }else{
                nombre="Cambio en el estado del ticket";
            }
            
            
            switch(tipo){
                case "Negocio":
                    tipo="1";
                    break;
                case "Desconocido":
                    tipo="2";
                    break;
                case "Ejecucion":
                    tipo="3";
                    break;
                case "Editar":
                    tipo="4";
                    break;
                case "Error":
                    tipo="5";
                    break;
                case "Cuentas":
                    tipo="6";
                    break;
                case "Funcionamiento":
                    tipo="7";
                    break;
                case "Otro":
                    tipo="8";
                    break;

            }
            
            switch(prioridad){
                case "Alta":
                    prioridad="1";
                    break;
                case "Media":
                    prioridad="2";
                    break;
                case "Baja":
                    prioridad="3";
                    break;
            }
            
            switch(estado){
                case "Abierto":
                    estado="1";
                    break;
                case "En Proceso":
                    estado="2";
                    break;
                case "Cerrado":
                    estado="3";
                    break;
            }
            
            if(!comentario.equals(acomentario)){
                nombre="Cambio en el comentario del ticket";
            }
            
             Conexion con = new Conexion();
            Connection c;
            con.setCon();
            c=con.getCon();
            
            String mensaje = con.ETicket(id, tipo, prioridad, estado, comentario, nombre, uid);
            
            try {
                c.close();
            } catch (SQLException ex) {
               
            }
            
            request.setAttribute("mensaje", mensaje);
          
                   RequestDispatcher rd = request.getRequestDispatcher("Gest_Tick.jsp");
                   rd.forward(request, response);
            
            
            
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
