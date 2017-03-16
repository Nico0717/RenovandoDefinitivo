/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloBEAN.BeanUsuario;
import util.Conexion;
import util.InterfaceCRUD;




public class DaoUsuario extends Conexion implements InterfaceCRUD{
    
    private Connection conexion = null;
    private Statement st = null;
    private ResultSet rs = null;

    public boolean encontrado = false;
    public boolean listo = false;
    
    BeanUsuario BeanUsu;
    
    public DaoUsuario(){
        
    }
    
    
    
    public DaoUsuario (BeanUsuario ObjUsu){
    
        super();
        
        try {
            conexion = this.ObtenerConexion();
            st = conexion.createStatement();
            
            BeanUsu = ObjUsu;
         
        } catch (Exception ex) {
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE, null,ex);
            
        }      
    }
    
   
    
    public boolean validar(String Usuario, String Contraseña){
        
        try {
            conexion = this.ObtenerConexion();
            st = conexion.createStatement();
            rs = st.executeQuery("Select * from Usuario where Usuario = '"+ Usuario+"' and Contraseña= '" +Contraseña+"'");
            
           if (rs.next()){
               encontrado=true;
           } 
           this.CerrarConexion();
            
        } catch (Exception e) {
        }
      return encontrado;
    }
    

    @Override
    public boolean AgregarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean ActualizarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    
   
    
}
