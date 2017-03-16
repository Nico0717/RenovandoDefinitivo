/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beanregistro;

import java.sql.Date;

public class BeanEntrada {

    public BeanEntrada(int idFactura, int Persona_idPersona, int Saldo, int Puntos_Totales, int Mensaje, int Id_Empleado, String Telefono, Boolean Consignado, int Total, float IVA, Date Fecha_Hora) {
        this.idFactura = idFactura;
        this.Persona_idPersona = Persona_idPersona;
        this.Saldo = Saldo;
        this.Puntos_Totales = Puntos_Totales;
        this.Mensaje = Mensaje;
        this.Id_Empleado = Id_Empleado;
        this.Telefono = Telefono;
        this.Consignado = Consignado;
        this.Total = Total;
        this.IVA = IVA;
        this.Fecha_Hora = Fecha_Hora;
    }

    private int idFactura;
    private int Persona_idPersona;
    private int Saldo;
    private int Puntos_Totales;
    private int Mensaje;
    private int Id_Empleado;
    private String Telefono;
    private Boolean Consignado;
    private int Total;
    private float IVA;
    private Date Fecha_Hora;
        
    
    public int getIdFactura() {
        return idFactura;
    }

    public void setIdFactura(int idFactura) {
        this.idFactura = idFactura;
    }

    public int getPersona_idPersona() {
        return Persona_idPersona;
    }

    public void setPersona_idPersona(int Persona_idPersona) {
        this.Persona_idPersona = Persona_idPersona;
    }

    public int getSaldo() {
        return Saldo;
    }

    public void setSaldo(int Saldo) {
        this.Saldo = Saldo;
    }

    public int getPuntos_Totales() {
        return Puntos_Totales;
    }

    public void setPuntos_Totales(int Puntos_Totales) {
        this.Puntos_Totales = Puntos_Totales;
    }

    public int getMensaje() {
        return Mensaje;
    }

    public void setMensaje(int Mensaje) {
        this.Mensaje = Mensaje;
    }

    public int getId_Empleado() {
        return Id_Empleado;
    }

    public void setId_Empleado(int Id_Empleado) {
        this.Id_Empleado = Id_Empleado;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public Boolean getConsignado() {
        return Consignado;
    }

    public void setConsignado(Boolean Consignado) {
        this.Consignado = Consignado;
    }

    public int getTotal() {
        return Total;
    }

    public void setTotal(int Total) {
        this.Total = Total;
    }

    public float getIVA() {
        return IVA;
    }

    public void setIVA(float IVA) {
        this.IVA = IVA;
    }

    public Date getFecha_Hora() {
        return Fecha_Hora;
    }

    public void setFecha_Hora(Date Fecha_Hora) {
        this.Fecha_Hora = Fecha_Hora;
    }
    
 
    
}
