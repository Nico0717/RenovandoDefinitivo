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
public class BeanProducto {

    public BeanProducto(String Id_Producto, String Descripcion, String Precio) {
        this.Id_Producto = Id_Producto;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
    }
    
    private String Id_Producto;
    private String Descripcion;
    private String Precio;


    public String getId_Producto() {
        return Id_Producto;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public String getPrecio() {
        return Precio;
    }

    public void setId_Producto(String Id_Producto) {
        this.Id_Producto = Id_Producto;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public void setPrecio(String Precio) {
        this.Precio = Precio;
    }
    

}
