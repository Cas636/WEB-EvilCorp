<%-- 
    Document   : conexion
    Created on : 23/08/2020, 07:37:13 PM
    Author     : Johan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.sql.Connection"
        import="java.sql.DriverManager"
        import="java.sql.ResultSet"
        import="java.sql.Statement"
        import="java.sql.SQLException"
        %>

<%
    Connection db = null;
    Statement sql = null;
    
    String driver = "jdbc:mysql";
    String url = "db-prog-avanzada-g81.cq73qyc2lysx.us-east-1.rds.amazonaws.com";
    int puerto = 3306;
    String bd = "Grupo8Proyecto";
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        db = (Connection) DriverManager.getConnection(driver + "://" + url + ":" + puerto + "/" + bd, "prog_avanzada", "pa2020-1");
        sql = db.createStatement();
        //out.print("Conexión Establecida");
    
    }catch(Exception e){
        out.print("Error en la conexión "+e);
    }
        
%>
