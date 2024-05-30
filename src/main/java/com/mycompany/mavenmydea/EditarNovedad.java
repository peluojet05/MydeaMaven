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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author diego
 */
@WebServlet(name = "EditarNovedad", urlPatterns = {"/EditarNovedad"})
public class EditarNovedad extends HttpServlet {

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
            String nombre = request.getParameter("nombre");
            String anombre = request.getParameter("anombre");
            
            String desc = request.getParameter("desc");
            String adesc = request.getParameter("adesc");
            
            String img = request.getParameter("img");
            String aimg = request.getParameter("aimg");
            
           
            String id = request.getParameter("idn");
            
            
            
            if(nombre.equals("")){
                nombre = anombre;
            }
            if(desc.equals("")){
                desc=adesc;
            }
            if(img.equals("")){
                img=aimg;
            }
            
            
            Conexion con = new Conexion();
                        Connection c;
                        con.setCon();
                        c=con.getCon();

                        String mensaje = con.ENovedad(nombre, desc, img, id);

                        try {
                            c.close();
                        } catch (SQLException ex) {
                            
                        }
                         
                        if(mensaje==null){
                                mensaje="Datos actualizados correctamente";
                               request.setAttribute("mensaje", mensaje);
                               request.setAttribute("neid", id);
                               
                              RequestDispatcher rd = request.getRequestDispatcher("Subir_Novedad.jsp");
                              rd.forward(request, response);


                        //
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
