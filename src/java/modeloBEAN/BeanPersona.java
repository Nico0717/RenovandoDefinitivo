/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloBEAN;

import java.sql.*;





public class BeanPersona extends util.Conexion{

    public BeanPersona(int idPersona, int Usuario_idUsuario, int Documento, String Tipo_Documento, int Num_Franquicia, String Telefono, String Correo, String Ocupacion, String Nombre, String Nombre_2, String Apellido_1, String Apellido_2, Date Fecha_De_Nacimiento, Boolean Genero, String Parentezco, String Direccion, String Tipo_Vivienda, Boolean Representante) {
        this.idPersona = idPersona;
        this.Usuario_idUsuario = Usuario_idUsuario;
        this.Documento = Documento;
        this.Tipo_Documento = Tipo_Documento;
        this.Num_Franquicia = Num_Franquicia;
        this.Telefono = Telefono;
        this.Correo = Correo;
        this.Ocupacion = Ocupacion;
        this.Nombre = Nombre;
        this.Nombre_2 = Nombre_2;
        this.Apellido_1 = Apellido_1;
        this.Apellido_2 = Apellido_2;
        this.Fecha_De_Nacimiento = Fecha_De_Nacimiento;
        this.Genero = Genero;
        this.Parentezco = Parentezco;
        this.Direccion = Direccion;
        this.Tipo_Vivienda = Tipo_Vivienda;
        this.Representante = Representante;
    }
    
    public BeanPersona(){
        
    }

    public BeanPersona(int Usuario_idUsuario, String Documento, String Nombre, String Nombre_2, String Apellido_1, String Apellido_2) {
        
    }



    public int getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    public int getUsuario_idUsuario() {
        return Usuario_idUsuario;
    }

    public void setUsuario_idUsuario(int Usuario_idUsuario) {
        this.Usuario_idUsuario = Usuario_idUsuario;
    }

    public int getDocumento() {
        return Documento;
    }

    public void setDocumento(int Documento) {
        this.Documento = Documento;
    }

    public String getTipo_Documento() {
        return Tipo_Documento;
    }

    public void setTipo_Documento(String Tipo_Documento) {
        this.Tipo_Documento = Tipo_Documento;
    }

    public int getNum_Franquicia() {
        return Num_Franquicia;
    }

    public void setNum_Franquicia(int Num_Franquicia) {
        this.Num_Franquicia = Num_Franquicia;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getOcupacion() {
        return Ocupacion;
    }

    public void setOcupacion(String Ocupacion) {
        this.Ocupacion = Ocupacion;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getNombre_2() {
        return Nombre_2;
    }

    public void setNombre_2(String Nombre_2) {
        this.Nombre_2 = Nombre_2;
    }

    public String getApellido_1() {
        return Apellido_1;
    }

    public void setApellido_1(String Apellido_1) {
        this.Apellido_1 = Apellido_1;
    }

    public String getApellido_2() {
        return Apellido_2;
    }

    public void setApellido_2(String Apellido_2) {
        this.Apellido_2 = Apellido_2;
    }

    public Date getFecha_De_Nacimiento() {
        return Fecha_De_Nacimiento;
    }

    public void setFecha_De_Nacimiento(Date Fecha_De_Nacimiento) {
        this.Fecha_De_Nacimiento = Fecha_De_Nacimiento;
    }

    public Boolean getGenero() {
        return Genero;
    }

    public void setGenero(Boolean Genero) {
        this.Genero = Genero;
    }

    public String getParentezco() {
        return Parentezco;
    }

    public void setParentezco(String Parentezco) {
        this.Parentezco = Parentezco;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getTipo_Vivienda() {
        return Tipo_Vivienda;
    }

    public void setTipo_Vivienda(String Tipo_Vivienda) {
        this.Tipo_Vivienda = Tipo_Vivienda;
    }

    public Boolean getRepresentante() {
        return Representante;
    }

    public void setRepresentante(Boolean Representante) {
        this.Representante = Representante;
    }

    
    private int idPersona;
    private int Usuario_idUsuario;
    private int Documento;
    private String Tipo_Documento;
    private int Num_Franquicia;
    private String Telefono;
    private String Correo;
    private String Ocupacion;
    private String Nombre;
    private String Nombre_2;
    private String Apellido_1;
    private String Apellido_2;
    private Date Fecha_De_Nacimiento;
    private Boolean Genero;
    private String Parentezco;
    private String Direccion;
    private String Tipo_Vivienda;
    private Boolean Representante;
    
   
    
    
    
    
    

    

   
    
 
    
}   
