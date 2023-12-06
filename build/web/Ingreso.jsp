<%-- 
    Document   : Ingreso
    Created on : 24/08/2020, 06:04:39 PM
    Author     : ASUS
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="conexion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Css/Ingreso.css" rel="stylesheet" type="text/css">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EvilCorp</title>
    </head>
    <body >
        <header>
            <section>
            <article>
                    <div id="logo">
                    </div>
                <a href="index.html">
                    <div class="iconos">
                        Inicio
                    </div>
                </a>
                <a href="#cosa">
                    <div class="iconos">
                        Notificaciones
                    </div>
                </a>
                <a href="#enlace1">
                    <div class="iconos">
                        Cerrar sesión
                    </div>
                </a>
                <a href="https://www.dell.com/support/home/es-co">
                    <div class="iconos">
                        Soporte
                    </div>
                </a>
                </article>
            </section>
        </header>
        <main>
            <section id="bienvenida">
                <div>
                    Bienvenido <%= request.getAttribute("nombre") %>
                    <br>
                    <%
                        Date ahora = new Date();
                        SimpleDateFormat formateador = new SimpleDateFormat("hh:mm:ss");
                        String hora =formateador.format(ahora);
                        
                    %>
                    <%= hora %>
                    <br>
                    <h3><%= request.getAttribute("reporte") %>
                    </h3>
                   <br>Usted ha llegado tarde  
                   <%=
                       request.getAttribute("veces")
                       %>
                    veces
                   <br>
                    Su hora de ingreso se registro exitosamente.
                </div>
            </section>
        </main>
        <footer>
            Johan Esteban Castaño Martínez - 20191020029 <br>
	    Santiago Buitrago - 20181020036<br>
	    Violeth Valmont Azahar - 20181020010
            <article id="ultimo">
                <a href="https://es-la.facebook.com/">
                    <div class="redes" id="face">
                    </div>
                </a>
                <a href="https://twitter.com/?lang=es">
                    <div class="redes" id="pajaro">
                    </div>
                </a>
                <a href="https://www.instagram.com/?hl=es-la">
                    <div class="redes" id="insta">
                    </div>
                </a>
                <a href="https://www.youtube.com/?gl=ES&hl=es">
                    <div class="redes" id="you">
                    </div>
                </a>
            </article>
        </footer>
        <section class="fondo" id="enlace1">
                    <a href="#">
                        <div class="cerrar">
                        </div>
                   </a>
               <article class="grupos">
                   <div class="fotosgrandes" id="foto1">Seguro que desea cerrar sesión?
                   </div>
                   <a href="index.jsp">
                  <input type="submit" value="Si" class="botones"> 
                    </a>
                   <a href="#">
                   <input type="submit" value="No" class="botones"> 
                   </a>
               </article>
            </section>
    </body>
</html>