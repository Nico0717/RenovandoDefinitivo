/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloBEAN;

/**
 *
 * @author josec
 */
public class BeanRol {

    public BeanRol(String Id_Rol, String Descripcion) {
        this.Id_Rol = Id_Rol;
        this.Descripcion = Descripcion;
    }
    private String Id_Rol;
    private String Descripcion;

    public void setId_Rol(String Id_Rol) {
        this.Id_Rol = Id_Rol;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getId_Rol() {
        return Id_Rol;
    }

    public String getDescripcion() {
        return Descripcion;
    }
    
    
}
