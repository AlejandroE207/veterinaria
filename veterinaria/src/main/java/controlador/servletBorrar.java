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
import modelo.Listado;

/**
 *
 * @author USUARIO
 */
@WebServlet(name = "servletBorrar", urlPatterns = {"/servletBorrar"})
public class servletBorrar extends HttpServlet {
    Listado lista = Listado.getInstancia();
   
   

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int indice = Integer.parseInt(request.getParameter("indice"));
            lista.eliminarAnimal(indice);
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
