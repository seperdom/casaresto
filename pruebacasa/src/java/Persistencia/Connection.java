package Persistencia;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by Seba on 05/10/2016.
 */
public class Connection {

    protected static java.sql.Connection conexion;
    private String stringConsulta;
    String url = "jdbc:mysql://localhost:3306/";
    String dbName = "mysqlPrueba";
    String userName = "root";
    String password = "admin2017";
    public static java.sql.Connection getConexion()
    {
        return conexion;
    }

    public Connection() {

        
    }

    public static java.sql.Connection abrirConexion()
    {
        conexion = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mysqlPrueba?user=root&password=admin2017");
            if(conexion!=null)
                return conexion;
        } catch (SQLException ex) {
            ex.printStackTrace();
            System.out.println(ex.getMessage());

        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();

        }

        return null;

    }
}
