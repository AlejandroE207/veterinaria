<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@page import="modelo.*" %>
<%@page import="jakarta.servlet.jsp.jstl.core.*" %>
<% 
    Listado lista = (Listado) session.getAttribute("lista");
   // Listado lista = new Listado();
    ArrayList animales = new ArrayList();
    animales = lista.getLista();
    int num = animales.size();
    int numPerros = (int)session.getAttribute("numPerros");
    int numGatos = (int)session.getAttribute("numGatos");
    double prom = (double)session.getAttribute("prom");
    
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
        integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="estiloTabla.css">
    <title>Document</title>
</head>

<body>
    <h1 class="titulo1">TABLA DE ANIMALES</h1>
    <div class="contenedor_formulario">
        <table border="4">
            <thead class="cabezadoTabla">
                <th>Id</th>
                <th>Nombre</th>
                <th>Raza</th>
                <th>Color</th>
                <th>Edad</th>
                <th>Nivel Entrenamiento</th>
                <th>Toxoplasmosis</th>
                <th></th>
            </thead>
           
            <tbody>
                <% 
                        Iterator it = animales.iterator();
                        int indice=0;
                        while(it.hasNext()){
                            Mascota animal = (Mascota)it.next();
                            indice = animales.indexOf(animal);%>
                            <tr>
                                <td><%= indice %></td>
                                <td><%= animal.getNombre()%></td>
                                <td><%= animal.getRaza()%></td>
                                <td><%= animal.getColor()%></td>
                                <td><%= animal.getEdad()%></td>
                                <% if(animal instanceof Canino){ 
                                        int nivel=0;
                                        nivel=((Canino)animal).getNivelEntreno(); %>
                                        <td><%= nivel%></td>
                                <% }else{ %>
                                    <td>N/A</td>
                                <% } %>
                                <% if(animal instanceof Felino){ 
                                        boolean toxo=false;
                                        toxo=((Felino)animal).isToxoplasmosis(); %>
                                        <td><%= toxo%></td>
                                <% }else{ %>
                                    <td>N/A</td>
                                <% } %>
                                
                                <td> 
                                    <form action="servletBorrar" method="post">
                                        <input type="hidden"  name="indice" value="<%= indice %>">
                                        <!--<input type="submit" class="boton enviar" value="Enviar">-->
                                        <input title="Eliminar" alt="Eliminar" src="eliminar.png" type="image" class="boton_img"/>
                                    </form>
                                </td>
                                
                            </tr>
                    <% } %>
            </tbody>
            <tfoot class="footerTable">
                <tr clas="footerTable_conteCampos">
                  <th >Total animales:</th>
                  <td class="tfoot_td"><%= num %></td>
                  <th >Total Perros:</th>
                  <td class="tfoot_td"><%= numPerros %></td>
                  <th >Total Gatos:</th>
                  <td class="tfoot_td"><%= numGatos %></td>
                  <th >Promedio Edades:</th>
                  <td class="tfoot_td"><%= prom %></td>
                </tr>
            </tfoot>        
           
        </table>
    </div>
        <div class="contenedor_boton">
            <a class="boton" href="index.jsp">AGREGAR</a></a>
        </div>
                 
</body>
</html>
