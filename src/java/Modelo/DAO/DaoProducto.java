package Modelo.DAO;

import Beanregistro.BeanCategoria;
import Beanregistro.BeanEntrada;
import Beanregistro.BeanEntrada_Has_Entrada;
import util.Conexion;
import util.InterfaceCRUD;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import java.sql.CallableStatement;
import modeloBEAN.*;



public class DaoProducto extends Conexion implements InterfaceCRUD {
    
    public Connection  Conexion = null;
    public Statement st = null;
    public ResultSet rs = null; 
    
    public boolean encontrado = false;
    public boolean listo = false; 
    
    BeanPersona Bperson;
    BeanEntrada Bentra;
    BeanEntrada_Has_Entrada Bhasentrada;
     public String Nombre;
     public int Precio;
     public float Peso;
     public int idmaterial;
   
    public DaoProducto(BeanPersona Objectpers){
         Bperson = Objectpers;
    }
    
    public DaoProducto (BeanMaterial bm, BeanCategoria bc, BeanEntrada Bentrada,BeanEntrada_Has_Entrada Bhasentra) {
        
         super();
         
          try {
            conexion = this.ObtenerConexion();
            st = Conexion.createStatement();
            
           
            Bhasentrada = Bhasentra;
            Bentra = Bentrada;
           
            
            
            Nombre= bc.getNombre();
            Precio= bm.getPrecio();
            Peso=bm.getPeso(); 
            idmaterial=bm.getId_Material();
        
            
        } catch (Exception ex) {
            Logger.getLogger(DaoProducto.class.getName()).log(Level.SEVERE, null,ex);
        }
    }
        
    
         
       
     public DaoProducto(){
        
    }

     public boolean TraerUsuario(){
       try {
            conexion = this.ObtenerConexion();
            st = conexion.createStatement();
            rs = st.executeQuery("Select Documento, Nombre, Nombre_2, Apellido_1, Apellido_2 from persona where idPersona = '"+Bperson.getUsuario_idUsuario()+"',);");
            
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
          try {
            CallableStatement procedure = Conexion.prepareCall("{call registrarprodcuto ('"+Nombre+"','"+Precio+"','"+Peso+"')};");
            procedure.execute();
            listo= true;
        } catch (Exception ex) {
             Logger.getLogger(DaoProducto.class.getName()).log(Level.SEVERE, null,ex);
        }
        return listo;  
    
    }

    @Override
    public boolean ActualizarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
  
    
}

  

    
   