/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beanregistro;

/**
 *
 * @author APRENDIZ
 */
public class BeanCategoria { 
     
    private int idCateoria;
    private String Nombre; 
    
    
     public BeanCategoria(int idCateoria, String Nombre) {
        this.idCateoria = idCateoria;
        this.Nombre = Nombre;
    }

    public int getIdCateoria() {
        return idCateoria;
    }

    public void setIdCateoria(int idCateoria) {
        this.idCateoria = idCateoria;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

  
}
