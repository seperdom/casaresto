package PersistenciaModelo;

import java.sql.ResultSet;
import java.sql.SQLException;

import Dominio.Usuario;
import Persistencia.Persistente;

/**
 * Created by Seba on 05/10/2016.
 */
public class UsuarioPersistente implements Persistente {

    Usuario usuario;


    public UsuarioPersistente(Usuario pUsuario)
    {
        this.usuario=pUsuario;
    }

    public void setJugador(Usuario pUsuario)
    {
        this.usuario=pUsuario;
    }

    @Override
    public String getInsertSql() {

        return "INSERT INTO USUARIO (oid,nombre,apellido,email,telefono) VALUES (" +
                getOid() + ",'" + usuario.getmNombre() + "','" + usuario.getmApellido()+ "','" + usuario.getmEmail()+ "','" + usuario.getmTelefono() + "')";
    }

    @Override
    public void setOid(int oid) {
        if(usuario!=null)usuario.setmOid(oid);
    }

    @Override
    public String getUpdateSql() {

        return "UPDATE USUARIO set nombre='" + usuario.getmNombre() + "', apellido='" + usuario.getmApellido() + "', email='" + usuario.getmEmail() + "', telefono='" + usuario.getmTelefono() + "'";
    }

    @Override
    public String getDeleteSql() {
        return "DELETE FROM USUARIO";
    }

    @Override
    public String getSelectSql() {

        return "SELECT * FROM USUARIO";
    }

    @Override
    public int getOid() {

        if(usuario!=null)return usuario.getmOid();
        else return -1;
    }

    @Override
    public void leer(ResultSet rs) {

        try
        {
            usuario.setmNombre(rs.getString("nombre"));
            usuario.setmApellido(rs.getString("apellido"));
            usuario.setmEmail(rs.getString("email"));
            usuario.setmTelefono(rs.getString("telefono"));

        }catch(SQLException ex)
        {

        }
    }

    @Override
    public Persistente getNuevo() {

        return new UsuarioPersistente(new Usuario());
    }

    @Override
    public Object getObjeto() {

        return usuario;
    }

    @Override
    public String obtenerXFecha(String pMes, String pAnio) {
        return null;
    }

    @Override
    public String obtenerXFecha(String pOid) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String obtenerXOid(String pOid) {

        return null;
    }

    @Override
    public String obtenerXNombre(String pNombre) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


    @Override
    public String obtenerDisponible(String pMesA, String pMesB, String pAnioA, String pAnioB, String pIni, String pFin) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }



}
