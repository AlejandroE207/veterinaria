/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.jsp.jstl.core.*;
import java.util.ArrayList;
import modelo.*;

/**
 *
 * @author USUARIO
 */
@WebServlet(name = "miServlet", urlPatterns = {"/miServlet"})
public class miServlet extends HttpServlet {
     //Listado lista = new Listado();
    Listado lista  ;
    
     
     
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            
        lista = Listado.getInstancia();
      
        String tipo = request.getParameter("tipo");
        String nombre = request.getParameter("nombre");
        String raza = request.getParameter("raza");
        String color = request.getParameter("color");
        int edad = Integer.parseInt(request.getParameter("edad"));

        String nivel = request.getParameter("nivelEntreno");
        int nivelEntreno = Integer.parseInt(nivel);
        String toxo = request.getParameter("toxoplasmosis");
        boolean toxoplasmosis = true;
        if (toxo == "Si") {
            toxoplasmosis = true;
        } else {
            toxoplasmosis = false;
        }
        
        if (tipo.equals("Perro")) {
            Mascota objeto = new Canino(nombre, raza, color, edad, nivelEntreno);
            lista.agregar(objeto);

        } else {
            if (tipo.equals("Gato")) {
                Mascota objeto = new Felino(nombre, raza, color, edad, toxoplasmosis);
                lista.agregar(objeto);
            }
        }
        int numPerros = lista.cantPerros();
        int numGatos = lista.cantGatos();
        double prom = lista.edadProm();
      request.getSession().setAttribute("lista", lista);
      request.getSession().setAttribute("numPerros", numPerros);
      request.getSession().setAttribute("numGatos", numGatos);
      request.getSession().setAttribute("prom", prom);
        
        response.sendRedirect("muestra.jsp");
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
