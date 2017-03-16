
package Modelo.DAO;

import util.Conexion;
import util.InterfaceCRUD;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import Beanregistro.*;
import java.sql.CallableStatement;


public class DaoEntrada extends Conexion implements InterfaceCRUD{

    public Connection  Conexion = null;
    public Statement st = null;
    public ResultSet rs = null; 
    
    public boolean encontrado = false;
    public boolean listo = false;
    
    public int Entrada_idFactura;
    public int Material_idMaterial;
    public int Precio;
    public int Peso;
    public int Subtotal;  
    
    
    
    
    public DaoEntrada(BeanEntrada_Has_Entrada Bentrahas){
        
    Entrada_idFactura= Bentrahas.getEntrada_idFactura();
    Material_idMaterial = Bentrahas.getMaterial_idMaterial();
    Precio = Bentrahas.getPrecio();
    Peso = Bentrahas.getPeso();
    Subtotal = Bentrahas.getSubtotal();  
    
    
        
    }
    
    
    
    @Override
    public boolean AgregarRegistro() {
        try {
            st.executeUpdate("insert into entrada_has_material (Material_idMaterial, Precio, Peso, Subtotal) VALUES('"+Material_idMaterial+"','"+Precio+"','"+Peso+"','"+Subtotal+"');");
            listo=true;
            
        } catch (Exception ex) {
         Logger.getLogger(DaoEntrada.class.getName()).log(Level.SEVERE, null,ex);   
        
        }
        return listo;
    }

   

    @Override
    public boolean ActualizarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
