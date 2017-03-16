/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.*;

/**
 *
 * @author APRENDIZ
 */
public class Conexion {
   public String driver, url, user, pass, bd;
   public Connection conexion;
   
   public Conexion(){
       driver="com.mysql.jdbc.Driver";
       bd="proyectofinal";
       url="jdbc:mysql://localhost:3306/"+bd;
       user="root";
       pass="";
   
       try {
        Class.forName(driver).newInstance();
        conexion = DriverManager.getConnection(url,user,pass);
           System.out.println("Conexion a BD OK!!!");
       }catch(ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException e){
           System.out.println("Error al conectarse"+e);
       }
   }
   public Connection ObtenerConexion(){
       return conexion;
   }
   public Connection CerrarConexion()throws SQLException{
   conexion.close();
   conexion=null;
   return conexion;
   
   }
    public static void main(String[] args) {
        new Conexion();
    }
 
}
