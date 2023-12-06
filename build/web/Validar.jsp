<%-- 
    Document   : Validar
    Created on : 24/08/2020, 03:04:12 PM
    Author     : Johan
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="conexion.jsp"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validar</title>
    </head>
    <body>
        <%
           
           String documento = request.getParameter("documento");//tipo de documento
           String name = request.getParameter("name");//usuario o documento
           String password = request.getParameter("password");//contraseña
           boolean estado=false;
           
         String query ="select * from empleados";
         ResultSet data = sql.executeQuery(query);
         int id=0;
            while(data.next()){
                
                String s1=data.getString(2);
                String s2=data.getString(3);
                String s3=data.getString(10);
                int s4=data.getInt(11);
               
                
                if((s1.equals(documento)) && (s2.equals(name)) && (s3.equals(password))){
                    
                    String nombre=data.getString(4);
                    id=data.getInt(1);
                    
                    
                    SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MMM-yy ");
                    String fecha = dateFormat.format(new Date()).toString();
                    
                    Date ahora = new Date();
                    SimpleDateFormat formateador = new SimpleDateFormat("HH:mm:ss");
                    String hora =formateador.format(ahora);
                   
                    String cambio = hora.replaceAll("[^0-9.]", "");
                    int digits = Integer.parseInt(cambio);
                    
                    String reporte;
                    int rep;
                    if(digits<80500){
                        if(digits>80000){
                            reporte="Usted llego temprano, Siga asi";
                            rep=0;
                        }
                        else{
                            reporte="Espere hasta las 8 am para empezar su jornada laboral";
                            rep=0;
                        }  
                    }
                    else{
                        reporte="Usted llego tarde";
                        rep=1;
                    }
                    if(s4==2){
                        if(digits<140500){
                        if(digits>100000){
                            reporte="Usted llego temprano, Siga asi";
                            rep=0;
                        }
                        else{
                            reporte="Espere hasta las 2 pm para empezar su jornada laboral";
                            rep=0;
                        }  
                    }
                    else{
                        reporte="Usted llego tarde";
                        rep=1;
                    }
                        
                    }
                    int veces=0;
                        String busca ="select * from horaLlegada";
                        ResultSet buscar = sql.executeQuery(busca);
                            while(buscar.next()){
                                int n=buscar.getInt(5);
                                if(id==n){
                                veces+=buscar.getInt(4);
                           }
                        }
                            //out.print(" "+veces+" ");
                    
                    request.setAttribute("nombre", new String(nombre));
                    request.setAttribute("reporte", new String(reporte));
                    request.setAttribute("veces", new Integer(veces));
                    request.getRequestDispatcher("Ingreso.jsp").forward(request, response);
                   
                    String qry="insert into horaLlegada(fecha,Hora,tardeOtemp,idempleado) values('"+fecha+"','"+hora+"','"+rep+"', '"+id+"')";
                    sql.executeUpdate(qry);
                    
                 estado=true;
                      break;
                }
           }
            
                    
                    
            if(estado==true){
            %><H2> El ingreso fue correcto </H2>
            <input type="button" value="SEGUIR" onclick="window.location='Ingreso.jsp'"><%
            }
             else if(estado==false){%>     
            <H2> El ingreso fue incorrecto</H2>
            <input type="button" value="VOLVER A INGRESAR" onclick="window.location='index.jsp'">
            
            <%}%>
  </body>
</html>
        
  
