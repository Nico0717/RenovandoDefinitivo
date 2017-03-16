/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beanregistro;


public class BeanEntrada_Has_Entrada {

    public BeanEntrada_Has_Entrada(int Entrada_idFactura, int Material_idMaterial, int Precio, int Peso, int Subtotal) {
        this.Entrada_idFactura = Entrada_idFactura;
        this.Material_idMaterial = Material_idMaterial;
        this.Precio = Precio;
        this.Peso = Peso;
        this.Subtotal = Subtotal;
    }
    
    public BeanEntrada_Has_Entrada(){
        
    }
    
    private int Entrada_idFactura;
    private int Material_idMaterial;
    private int Precio;
    private int Peso;
    private int Subtotal;   
    
    
    public int getEntrada_idFactura() {
        return Entrada_idFactura;
    }

    public void setEntrada_idFactura(int Entrada_idFactura) {
        this.Entrada_idFactura = Entrada_idFactura;
    }

    public int getMaterial_idMaterial() {
        return Material_idMaterial;
    }

    public void setMaterial_idMaterial(int Material_idMaterial) {
        this.Material_idMaterial = Material_idMaterial;
    }

    public int getPrecio() {
        return Precio;
    }

    public void setPrecio(int Precio) {
        this.Precio = Precio;
    }

    public int getPeso() {
        return Peso;
    }

    public void setPeso(int Peso) {
        this.Peso = Peso;
    }

    public int getSubtotal() {
        return Subtotal;
    }

    public void setSubtotal(int Subtotal) {
        this.Subtotal = Subtotal;
    }
        
}
