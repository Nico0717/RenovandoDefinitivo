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
public class Beanincluye {
       private int Precio;
    private String Peso;
    private int subtotal;

    public Beanincluye(int Precio, String Peso, int subtotal) {
        this.Precio = Precio;
        this.Peso = Peso;
        this.subtotal = subtotal;
    }

    public int getPrecio() {
        return Precio;
    }

    public void setPrecio(int Precio) {
        this.Precio = Precio; 
    }

    public String getPeso() {
        return Peso;
    }

    public void setPeso(String Peso) {
        this.Peso = Peso;
    }

    public int getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(int subtotal) {
        this.subtotal = subtotal;
    }
 
}
