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
public class BeanMaterial {

    public BeanMaterial(int Id_Material, String Nombre, int Precio, float Peso) {
        this.Id_Material = Id_Material;
        this.Nombre = Nombre;
        this.Precio = Precio;
        this.Peso = Peso;
    }


    
    private int Id_Material;
    private String Nombre;
    private int Precio;
    private float Peso;

    public int getId_Material() {
        return Id_Material;
    }

    public void setId_Material(int Id_Material) {
        this.Id_Material = Id_Material;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getPrecio() {
        return Precio;
    }

    public void setPrecio(int Precio) {
        this.Precio = Precio;
    }

    public float getPeso() {
        return Peso;
    }

    public void setPeso(float Peso) {
        this.Peso = Peso;
    }

}
