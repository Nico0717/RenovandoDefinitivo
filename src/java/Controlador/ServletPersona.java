/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.DAO.DaoPersona;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeloBEAN.BeanPersona;

/**
 *
 * @author APRENDIZ
 */
@WebServlet(name = "ServletPersona", urlPatterns = {"/ServletPersona"})
public class ServletPersona extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        int opcion = Integer.parseInt(request.getParameter("textOpcion"));
        
        int idPersona = Integer.parseInt(request.getParameter("idPersona"));
        int Usuario_idUsuario = Integer.parseInt(request.getParameter("Usuario_idUsuario"));
        int Documento = Integer.parseInt(request.getParameter("Documento"));
        String Tipo_Documento = request.getParameter("Tipo_Documento");
        int Num_Franquicia = Integer.parseInt(request.getParameter("Num_Franquicia"));
        String Telefono = request.getParameter("Telefono");
        String Correo = request.getParameter("Correo");
        String Ocupacion = request.getParameter("Ocupacion");
        String Nombre = request.getParameter("Nombre");
        String Nombre_2 = request.getParameter("Nombre_2");
        String Apellido_1 = request.getParameter("Apellido_1");
        String Apellido_2 = request.getParameter("Apellido_2");
        Date Fecha_De_Nacimiento = Date.valueOf(request.getParameter("Fecha_De_Nacimiento"));
        Boolean Genero = Boolean.valueOf( request.getParameter("Genero"));
        String Parentezco = request.getParameter("Parentezco");
        String Direccion = request.getParameter("Direccion");
        String Tipo_Vivienda = request.getParameter("Tipo_Vivienda");
        Boolean Representante = Boolean.valueOf(request.getParameter("Representante"));
        
            
        BeanPersona BPerson = new BeanPersona(idPersona, Usuario_idUsuario, Documento, Tipo_Documento, Num_Franquicia, Telefono, Correo, Ocupacion, Nombre, Nombre_2, Apellido_1, Apellido_2, Fecha_De_Nacimiento, Genero, Parentezco, Direccion, Tipo_Vivienda, Representante);
        DaoPersona DPerson = new DaoPersona(BPerson);
                   
        ResultSet rs;

            switch (opcion) {
                case 1: //agregar registro
                    if (DPerson.AgregarRegistro()) {
                        request.setAttribute("Exitoso", "<script> alert('Los Datos fueron Agegados correctamente') </script> ");

                    } else {
                        request.setAttribute("Error", "<script> alert('Los Datos no fueron registrados') </script>");
                    }

                    request.getRequestDispatcher("registrar_carro.jsp").forward(request, response);
                    break;

                case 2: //actualizar Persona

                    if (DPerson.ActualizarRegistro()) {

                        request.setAttribute("Exito", "<script> alert('Los Datos De Persona Se Actualizaron con exito') </script>");
                        request.getRequestDispatcher("menu.jsp").forward(request, response);

                    } else {
                        request.setAttribute("Error", "<script> alert ('Los Datos No se han Guardado Correctamente') </script>");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                    break;
                    
                    case 3: //actualizar Persona

                    if (DPerson.ConsultarRegistro()) {
                        
                        request.getRequestDispatcher("Consultar.jsp").forward(request, response);
                        
                    } else {
                        request.setAttribute("Error", "<script> alert ('Los Datos No se han Consultado Correctamente') </script>");
                        
                    }
                    break;

//                case 3:// Consultar Persona
//                    BeanPersona bcarro = BeanPersona.consultarRegistro(idPersona);
//                    if (bcarro != null) {
//                        request.setAttribute("bcarro", bcarro);
//                        request.getRequestDispatcher("Actualizar_vehiculo.jsp").forward(request, response);
//
//                    } else {
//                        request.setAttribute("Error", "<script> alert ('No se encontro el vehiculo') </script>");
//                        request.getRequestDispatcher("Consultar_carro.jsp").forward(request, response);
//                    }
            
            
            
            
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
