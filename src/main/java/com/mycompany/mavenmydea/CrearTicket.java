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
import java.time.LocalDateTime;
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
@WebServlet(name = "CrearTicket", urlPatterns = {"/CrearTicket"})
public class CrearTicket extends HttpServlet {

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
            
            String id = request.getParameter("idp");
            
            String tipo = request.getParameter("tipo");
            
            String img = request.getParameter("img");
            
            String nombre = request.getParameter("nom");
            
            String descripcion = request.getParameter("desc");
            
            String prioridad ="", estado="1";
            
            switch(tipo){
                case "Negocio":
                    tipo="1";
                    prioridad="1";
                    break;
                case "Desconocido":
                    tipo="2";
                    prioridad="1";
                    break;
                case "Ejecucion":
                    tipo="3";
                    prioridad="1";
                    break;
                case "Editar":
                    tipo="4";
                    prioridad="2";
                    break;
                case "Error":
                    tipo="5";
                    prioridad="2";
                    break;
                case "Cuentas":
                    tipo="6";
                    prioridad="2";
                    break;
                case "Funcionamiento":
                    tipo="7";
                    prioridad="3";
                    break;
                case "Otro":
                    tipo="8";
                    prioridad="3";
                    break;

            }
            
            LocalDateTime hoy = LocalDateTime.now();
                
                    String year = Integer.toString(hoy.getYear());

                    String mes = Integer.toString(hoy.getMonthValue());

                    String dia = Integer.toString(hoy.getDayOfMonth());

                    if(hoy.getDayOfMonth()<10){
                        dia = "0"+dia;
                    }

                    if(hoy.getMonthValue()<10){
                        mes="0"+mes;
                    }

                         String fecha = year +"-"+ mes +"-"+ dia;
            
            

                         
            
             Conexion con = new Conexion();
            Connection c;
            con.setCon();
            c=con.getCon();
             if(img.equals("")){
                 img="https://res.cloudinary.com/digt8oaow/image/upload/v1714502133/s0dpvc2gfqvdtwesxvo7.jpg";
             }
            String mensaje = con.ATicket(id, nombre, descripcion, tipo, prioridad, estado, img, fecha);
            
            try {
                c.close();
            } catch (SQLException ex) {
               
            }
            
            request.setAttribute("mensaje", mensaje);
          
                   RequestDispatcher rd = request.getRequestDispatcher("Gest_Tick_User.jsp");
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
