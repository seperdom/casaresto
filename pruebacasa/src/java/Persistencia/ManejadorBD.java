package Persistencia;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 * Created by Seba on 05/10/2016.
 */
public class ManejadorBD {

    private java.sql.Connection conexion;

    private static ManejadorBD instancia;

    public static ManejadorBD getInstancia() {
        if (instancia == null) {
            instancia = new ManejadorBD();
        }
        return instancia;
    }

    public void conectar(String url) {
        try {
           // Class.forName("com.mysql.jdbc.Driver").newInstance();
            conexion =DriverManager.getConnection(url);


        } catch (SQLException e1) {
            System.out.println( "Error de conexión");
        }
    }

    public void desconectar() {
        try {
            conexion.close();
            System.out.println("conexion cerrada!!!");
        } catch (SQLException e) {
            System.out.println("Error al cerrar la conexión.");
        }
    }

    private void ejecutar(String sql,boolean mostrar, String mensaje) {
        try {
            Statement st = conexion.createStatement();
            st.executeUpdate(sql);
            st.close();
            
        } catch (SQLException e) {
            System.out.println("Error al ejecutar sql:\n" + sql + "\n" + e.getMessage());
        }
    }

    private ResultSet obtenerResultSet(String sql) {
        ResultSet rs = null;
        try {
            Statement st = conexion.createStatement();
            rs = st.executeQuery(sql);
        } catch (SQLException e) {
            System.out.println("Error al ejecutar sql:\n" + sql + "\n" + e.getMessage());
        }
        return rs;
    }

    public int proximoOid() {
        int oid=-1;
        try {
            String sql = "SELECT valor FROM Parametros WHERE nombre='oid'";
            ResultSet rs = this.obtenerResultSet(sql);
            while (rs.next()) {
                oid=rs.getInt("valor");
            }
            rs.close();
            oid++;
            this.ejecutar("UPDATE Parametros set valor=" + oid + " WHERE nombre='oid'",false, null);
        } catch (SQLException e) {
            System.out.println("Error al obtener el proximo oid." + e.getMessage());
        }
        return oid;
    }

    public void guardar(Persistente p, String pMensaje){
        if(p.getOid()==0) agregar(p, pMensaje);
        else modificar(p, pMensaje);
    }
    public void agregar(Persistente p, String pMensaje) {
        int oid = this.proximoOid();
        p.setOid(oid);
        String sql = p.getInsertSql();
        this.ejecutar(sql,true,pMensaje);
    }

    public void modificar(Persistente p, String pMensaje) {
        String sql = p.getUpdateSql() + " WHERE oid=" + p.getOid();
        this.ejecutar(sql,true,pMensaje);
    }

    public void eliminar(Persistente p,String pMensaje) {
        String sql = p.getDeleteSql() + " WHERE oid=" + p.getOid();
        p.setOid(0);
        this.ejecutar(sql,true,pMensaje);
    }

    public void leer(Persistente p) {
        try {
            String sql = p.getSelectSql() + " WHERE oid=" + p.getOid();
            ResultSet rs = this.obtenerResultSet(sql);
            if (rs.next()) {
                p.leer(rs);
            }
            rs.close();
        } catch (SQLException e) {
            System.out.println("Error al obtener usuario.\n" + e.getMessage());
        }
    }

    public ArrayList obtenerTodos(Persistente p) {
        ArrayList ret = new ArrayList();
        try {
            String sql = p.getSelectSql();
            ResultSet rs = this.obtenerResultSet(sql);
            while (rs.next()) {
                Persistente nuevo = p.getNuevo();
                nuevo.leer(rs);
                nuevo.setOid(rs.getInt("oid"));
                ret.add(nuevo.getObjeto());
            }
            rs.close();
        } catch (SQLException e) {
            System.out.println("Error al obtener usuarios.\n" + e.getMessage());
        }
        return ret;
    }

    public ArrayList obtenerXFecha(Persistente p, String pMes, String pAnio)
    {
        ArrayList ret=new ArrayList();
        try {
            String sql = p.obtenerXFecha( pMes, pAnio);
            ResultSet rs = this.obtenerResultSet(sql);
            while (rs.next()) {
                Persistente nuevo = p.getNuevo();
                nuevo.leer(rs);
                nuevo.setOid(rs.getInt("oid"));
                ret.add(nuevo.getObjeto());
            }
            rs.close();
        } catch (SQLException e) {
            System.out.println("Error al obtener usuarios.\n" + e.getMessage());
        }
        return ret;

    }

    
   /* public static void main(String args[])
    {
        ManejadorBD.getInstancia().conectar("jdbc:mysql://localhost:3306/mysqlPrueba?user=root&password=admin2017");
        ResultSet rs=ManejadorBD.getInstancia().obtenerResultSet("SELECT * FROM USUARIO");
        try {
            while(rs.next())
            {
                System.out.println(rs.getString("nombre"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ManejadorBD.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }*/ 

    
    
}
