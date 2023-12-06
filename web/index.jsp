<%-- 
    Document   : index
    Created on : 23/08/2020, 08:42:51 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="conexion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Css/Estilos.css" rel="stylesheet" type="text/css">
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <title>EvilCorp</title>
    </head>
    <body>
        
        <header>
            <section>
                <article>
                    <div id="logo">
                    </div>
                <a href="Index.html">
                    <div class="iconos">
                        Inicio
                    </div>
                </a>
                <a href="Conocer.html">
                    <div class="iconos">
                        Conócenos
                    </div>
                </a>
                <a href="https://www.emtelco.com.co/contacto">
                    <div class="iconos">
                        Contáctanos
                    </div>
                </a>
                <a href="Registro.jsp">
                    <div class="iconos">
                        Registrate
                    </div>
                </a>
                <a href="#cosa">
                    <div class="iconos">
                        Inicia sesión
                    </div>
                </a>
                <a href="https://www.dell.com/support/home/es-co">
                    <div class="iconos">
                        Soporte
                    </div>
                </a>
                <a href="#cosa1">
                    <div class="iconos">
                        Buscar
                    </div>
                </a>
                </article>
            </section>
        </header>
        <main>
            <div>
            </div>
            <p>
                Trabajamos para darte el mejor servicio
            </p>
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
        <section class="fondo" id="cosa">
            <a href="#">
                <div class="cerrar">
                </div>
            </a>
          <article class="grupos">
            <p class="foto"></p><br>
            <article id="arreglo">
            <form action="Validar.jsp" method="POST">
                <label for="documento">Tipo de documento:</label>
                <select id="juego" name="documento">
                    <option selected value="0">...</option>
                    <option value="Cedula de ciudadania">Cédula de ciudadanía</option>
                    <option value="Cedula de extranjeria">Cédula de extranjería</option>
                    <option value="Pasaporte">Pasaporte</option>
                </select><br>
                <label for="name">Número de documento:
                </label><br>
                <input type="text" id="nick1" name ="name"><br>
                <label for="password">Contraseña:</label>
                <input type="password" id="email" name ="password"><br>
            <input class="go" type="submit" value="ENTRAR"><br>
            
                <div id="olvido">
                    ¿Olvido su contraseña?
                </div>
                <div id="olvido">
                    ¿No recuerda su usuario?
                </div>
            </form>
            </article>
          </article>
      </section>
       
    </body>
</html>
