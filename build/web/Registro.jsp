<%-- 
    Document   : Registro
    Created on : 23/08/2020, 08:22:34 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="conexion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Css/Registrar.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
    </head>
    <body>
        <%
            String documento = request.getParameter("documento");//tipo de documento
            String name = request.getParameter("name");//documento
            String apellido = request.getParameter("apellido");//Nombre
            String nivel = request.getParameter("horario");//horario de trabajo de la persona
            String email = request.getParameter("email");
            String direccion = request.getParameter("direccion");
            String telefono = request.getParameter("telefono");
            String sexo = request.getParameter("sexo");
            String nacimientoDia = request.getParameter("nacimientoDia");//dia de nacimiento
            String nacimientoMes = request.getParameter("nacimientoMes");//mes de nacimiento
            String nacimientoAmo = request.getParameter("nacimientoAmo");//año de nacimiento
            String codEmpresa = request.getParameter("codEmpresa");//lugar de nacimiento
            
                if(documento!=null && name!=null && apellido!=null && nivel!=null && email!=null && direccion!=null && telefono!=null && sexo!=null && nacimientoDia!=null && nacimientoMes!=null && nacimientoAmo!=null && codEmpresa!=null){
                  
            int idDep=0;
                if(nivel.equals("Administrador")) { 
                    idDep=1;
                }
                else if(nivel.equals("Auxiliar")){ 
                    idDep=2;
                }
                else if(nivel.equals("Supervisor")){ 
                    idDep=3;
                }
                else if(nivel.equals("Empleado de Linea")){ 
                    idDep=4;
                }
                
                    String nacimiento= ""+nacimientoDia+"/"+nacimientoMes+"/"+nacimientoAmo+"";
                    String query="insert into empleados(Documento,nombre,apellido,email,direccion,telefono,sexo,nacimiento,contraseña,iddepartamento) values('"+documento+"', '"+name+"', '"+apellido+"', '"+email+"', '"+direccion+"', '"+telefono+"', '"+sexo+"', '"+nacimiento+"', '"+codEmpresa+"', '"+idDep+"')";
                    sql.executeUpdate(query);
                    out.println("Usuario Registrado, de ahora en adelante puede ingresar con su documento y su contraseña " + "<a href='index.jsp'>Toca aqui para ingresar</a>");
                    
                   }else{
                    //out.print("Debido a los espacios en Blanco no se pudo registrar " + "<a href='Registro.jsp'>Volver a Registrarse</a>");
            %>
        <header>
            <section class="fondo2" id="cosa2">
                <p>
                    Formulario de Registro
                   
                </p>
                
                <article id="grupos2">
                    <article>
                         <H5> Recuerde que no debe dejar ningún espacio vacio</H5>
                     <form name="Registro" method="POST" action="Registro.jsp">
                    <label id="formulario" for="Documento">Tipo de documento:</label><br>
                    <select id="selector1" name="documento">
                    <option selected value="0">...</option>
                    <option value="Cedula de ciudadania">Cédula de ciudadanía</option>
                    <option value="Cedula de extranjeria">Cédula de extranjería</option>
                    <option value="Pasaporte">Pasaporte</option>
                    </select><br>
                    <label class="textos" for="name">Documento:
                    </label><br>
                    <input type="text" id="caracter" name ="name"><br>
                    <label class="textos" for="apellido">Nombre:
                    </label><br>
                    <input type="text" id="caracter" name ="apellido"><br>
                    <label class="textos" for="horario">Cargo:
                    </label><br>
                    <select id="selector1" name="horario">
                    <option selected value="0">...</option>
                    <option value="Administrador">Administrador</option>
                    <option value="Auxiliar">Auxiliar</option>
                    <option value="Supervisor">Supervisor</option>
                    <option value="Empleado de Linea">Empleado de Linea</option>
                    </select><br>
                    <label class="textos" for="email">Correo:
                    </label><br>
                    <input type="text" id="caracter" name ="email"><br>
                    <label class="textos" for="direccion">Dirección:
                    </label><br>
                    <input type="text" id="caracter" name ="direccion"><br>
                    <label class="textos" for="telefono">Teléfono:
                    </label><br>
                    <input type="text" id="caracter" name ="telefono"><br>
                    <label class="textos" for="sexo">Sexo:
                    </label><br>
                    <input type="text" id="caracter" name ="sexo"><br>
                    <label class="textos" for="nacimiento">Fecha de nacimiento:
                    </label><br>
                    <select id="dia" name="nacimientoDia">
                <option selected value="0">...</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="27">27</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
            </select><br>
                    <select id="mes" name="nacimientoMes">
                <option selected value="0">...</option>
                <option value="01">Enero</option>
                <option value="02">Febrero</option>
                <option value="03">Marzo</option>
                <option value="04">Abril</option>
                <option value="05">Mayo</option>
                <option value="06">Junio</option>
                <option value="07">Julio</option>
                <option value="08">Agosto</option>
                <option value="09">Septiembre</option>
                <option value="10">Octubre</option>
                <option value="11">Noviembre</option>
                <option value="12">Diciembre</option>
            </select><br>
                    <select id="amo" name="nacimientoAmo">
                <option selected value="0">...</option>
                <option value="2001">2001</option>
                <option value="2000">2000</option>
                <option value="1999">1999</option>
                <option value="1998">1998</option>
                <option value="1997">1997</option>
                <option value="1996">1996</option>
                <option value="1995">1995</option>
                <option value="1994">1994</option>
                <option value="1993">1993</option>
                <option value="1992">1992</option>
                <option value="1991">1991</option>
                <option value="1990">1990</option>
                <option value="1989">1989</option>
                <option value="1988">1988</option>
                <option value="1987">1987</option>
                <option value="1986">1986</option>
                <option value="1985">1985</option>
                <option value="1984">1984</option>
                <option value="1983">1983</option>
                <option value="1982">1982</option>
                <option value="1981">1981</option>
                <option value="1980">1980</option>
                <option value="1979">1979</option>
                <option value="1978">1978</option>
                <option value="1977">1977</option>
                <option value="1976">1976</option>
                <option value="1975">1975</option>
                <option value="1974">1974</option>
                <option value="1973">1973</option>
                <option value="1972">1972</option>
                <option value="1971">1971</option>
                <option value="1970">1970</option>
                <option value="1960">1969</option>
            </select><br>
                    <label class="textos" for="codEmpresa">Contraseña:
                    </label><br>
                    <input type="text" id="caracter" name ="codEmpresa"><br>
                <input class="ir" type="submit" value="ENTRAR">
                </form>
                     <%}//else%> 
             </article>
          </article>
      </section>
        </header>
    </body>
</html>
