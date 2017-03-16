/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modeloBEAN;

public class BeanUsuario {

    public BeanUsuario(int IdUsuario, String Usuario, String Contraseña, int Valor, boolean Estado) {
        this.IdUsuario = IdUsuario;
        this.Usuario = Usuario;
        this.Contraseña = Contraseña;
        this.Valor = Valor;
        this.Estado = Estado;
    }

    public BeanUsuario( String Usuario, String Contraseña) {
       
        this.Usuario = Usuario;
        this.Contraseña = Contraseña;
    }

    public int getIdUsuario() {
        return IdUsuario;
    }

    public void setIdUsuario(int IdUsuario) {
        this.IdUsuario = IdUsuario;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }

    public int getValor() {
        return Valor;
    }

    public void setValor(int Valor) {
        this.Valor = Valor;
    }

    public boolean isEstado() {
        return Estado;
    }

    public void setEstado(boolean Estado) {
        this.Estado = Estado;
    }

    private int IdUsuario;
    private String Usuario;
    private String Contraseña;
    private int Valor;
    private boolean Estado;
    
    
}

   