package Modelo.DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modeloBEAN.BeanPersona;
import util.Conexion;
import util.InterfaceCRUD;

public class DaoPersona extends Conexion implements InterfaceCRUD {

    public Connection conexion = null;
    public Statement st = null;
    public ResultSet rs = null;

    public boolean encontrado = false;
    public boolean listo = false;

//   BeanPersona Bperson;
    public int idPersona;
    public int Usuario_idUsuario;
    public String Documento;
    public String Tipo_Documento;
    public int Num_Franquicia;
    public String Telefono;
    public String Correo;
    public String Ocupacion;
    public String Nombre;
    public String Nombre_2;
    public String Apellido_1;
    public String Apellido_2;
    public Date Fecha_De_Nacimiento;
    public Boolean Genero;
    public String Parentezco;
    public String Direccion;
    public String Tipo_Vivienda;
    public Boolean Representante;

    public DaoPersona() {

    }

    public DaoPersona(BeanPersona OjbPers) {

        super();

        try {
            conexion = this.ObtenerConexion();
            st = conexion.createStatement();
//Bperson=OjbPers;
            idPersona = OjbPers.getIdPersona();
            Tipo_Documento = OjbPers.getTipo_Documento();
            Num_Franquicia = OjbPers.getNum_Franquicia();
            Telefono = OjbPers.getTelefono();
            Correo = OjbPers.getCorreo();
            Ocupacion = OjbPers.getOcupacion();
            Nombre = OjbPers.getNombre();
            Nombre_2 = OjbPers.getNombre_2();
            Apellido_1 = OjbPers.getApellido_1();
            Apellido_2 = OjbPers.getApellido_2();
            Fecha_De_Nacimiento = OjbPers.getFecha_De_Nacimiento();
            Genero = OjbPers.getGenero();
            Parentezco = OjbPers.getParentezco();
            Direccion = OjbPers.getDireccion();
            Tipo_Vivienda = OjbPers.getTipo_Vivienda();
            Representante = OjbPers.getRepresentante();

        } catch (Exception ex) {
            Logger.getLogger(DaoUsuario.class.getName()).log(Level.SEVERE, null, ex);

        }

    }

    @Override
    public boolean ActualizarRegistro() {
        try {
            st.executeUpdate("update Persona set Documento='" + Documento + "', Tipo_Documento='" + Tipo_Documento + "', Num_Franquicia='" + Num_Franquicia + "', Telefono='" + Telefono + "', Correo='" + Correo + "', Ocupacion='" + Ocupacion + "', Nombre='" + Nombre + "', Nombre_2='" + Nombre_2 + "', Apellido_1='" + Apellido_1 + "', Apellido_2='" + Apellido_2 + "', Fecha_De_Nacimiento='" + Fecha_De_Nacimiento + "' where idPersona ='" + idPersona + "';");
            listo = true;

        } catch (Exception ex) {
            Logger.getLogger(DaoPersona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listo;
    }

    @Override

    public boolean AgregarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public ArrayList<BeanPersona> ConsultarPersona() {

        Conexion conex = new Conexion();
        ArrayList<BeanPersona> Listar = new ArrayList<>();
        try {

            st = conex.ObtenerConexion().createStatement();

            CallableStatement procedure = conexion.prepareCall("Call ConsultaPersona()");
            //procedure.registerOutParameter(1, idPersona);
            procedure.execute();
            rs = procedure.getResultSet();

            while (rs.next()) {

                idPersona = Integer.parseInt(rs.getString("idPersona"));
                Documento = rs.getString("Documento");
                Nombre = rs.getString("Nombre");
                Nombre_2 = rs.getString("Nombre_2");
                Apellido_1 = rs.getString("Apellido_1");
                Apellido_2 = rs.getString("Apellido_2");
                Fecha_De_Nacimiento = Date.valueOf(rs.getString("Fecha_De_Nacimiento"));

                BeanPersona Bperson = new BeanPersona();

                Bperson.setIdPersona(idPersona);
                Bperson.setDocumento(Documento);
                Bperson.setNombre(Nombre);
                Bperson.setNombre_2(Nombre_2);
                Bperson.setApellido_1(Apellido_1);
                Bperson.setApellido_2(Apellido_2);
                Bperson.setFecha_De_Nacimiento(Fecha_De_Nacimiento);

                Listar.add(Bperson);
                
            }rs.close();

        } catch (Exception ex) {
            System.out.println("El error es: " + ex.getMessage());
        }
        
        

        return Listar;

    }

    
        public ArrayList<BeanPersona> EditarPersona(int idPersona) {
            
        Conexion conex = new Conexion();
        ArrayList<BeanPersona> Listar = new ArrayList<>();
        try {

            st = conex.ObtenerConexion().createStatement();

            CallableStatement procedure = conexion.prepareCall("Call EditarPersona(?)");
            procedure.setInt(1, idPersona);
            procedure.execute();
            rs = procedure.getResultSet();

            while (rs.next()) {

                idPersona = Integer.parseInt(rs.getString("idPersona"));
                Documento = rs.getString("Documento");
                Nombre = rs.getString("Nombre");
                Nombre_2 = rs.getString("Nombre_2");
                Apellido_1 = rs.getString("Apellido_1");
                Apellido_2 = rs.getString("Apellido_2");
                Fecha_De_Nacimiento = Date.valueOf(rs.getString("Fecha_De_Nacimiento"));

                BeanPersona Bperson = new BeanPersona();

                Bperson.setIdPersona(idPersona);
                Bperson.setDocumento(Documento);
                Bperson.setNombre(Nombre);
                Bperson.setNombre_2(Nombre_2);
                Bperson.setApellido_1(Apellido_1);
                Bperson.setApellido_2(Apellido_2);
                Bperson.setFecha_De_Nacimiento(Fecha_De_Nacimiento);

                Listar.add(Bperson);
            }rs.close();

        } catch (Exception ex) {
            System.out.println("El error es: " + ex.getMessage());
        }
        
        

        return Listar;

    }
    
    


    public boolean ConsultarRegistro() {
        try {
            ConsultarPersona();
            // request
            listo = true;

        } catch (Exception ex) {
            Logger.getLogger(DaoPersona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listo;
    }
    
    public boolean EditarP(){
        try{
            EditarPersona(idPersona);
            listo=true;
            
        }catch(Exception ex){
            Logger.getLogger(DaoPersona.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listo;
    }
}
