package Dominio;



import Dominio.Producto;
import java.util.ArrayList;

import Persistencia.ManejadorBD;
import PersistenciaModelo.UsuarioPersistente;

/**
 * Created by Seba on 05/10/2016.
 */
public class SSUsuarios {

    private static SSUsuarios controladoraUsu;
    private ArrayList<Usuario> usuarios;

    public static SSUsuarios getSSUsuarios()
    {
        if(controladoraUsu==null)
        {
            controladoraUsu=new SSUsuarios();
        }
        return controladoraUsu;
    }

    public SSUsuarios()
    {
        this.usuarios=new ArrayList();
        agregarUsuarios();

    }
    public Usuario altaUsuario(String pNombre, String pApellido, String pEmail, String pTelefono)
    {
        ManejadorBD bd = ManejadorBD.getInstancia();
        Usuario usu=new Usuario(pNombre,pApellido,pEmail,pTelefono);
        bd.guardar(new UsuarioPersistente(usu),"Usuario guardado correctamente!");
        return usu;
    }
    public void agregarUsuarios()
    {
        ManejadorBD bd = ManejadorBD.getInstancia();
        ArrayList datos= bd.obtenerTodos(new UsuarioPersistente(null));
        this.usuarios=new ArrayList();
        for(int i=0;i<datos.size();i++)
        {
            Usuario usu=(Usuario)datos.get(i);
            this.usuarios.add(usu);
        }

    }

    public Usuario buscarUsuario(String pNombre, String pApellido, String pTelefono)
    {
        for(Usuario usuario:this.usuarios)
        {
            if(usuario.getmNombre().equals(pNombre)&&usuario.getmApellido().equals(pApellido)&&usuario.getmTelefono().equals(pTelefono))
            {
                return usuario;
            }
        }
        return null;
    }

    ArrayList<Usuario> traerUsuarios() {

        return this.usuarios;
    }

    Usuario buscarUsuarioXCorreo(String pCorreo) {

        for(Usuario usu:this.usuarios)
        {
            if(usu.getmEmail().equals(pCorreo))
            {
                return usu;
            }
        }
        return null;
    }

    void eliminarUsuario(String Email) {

        ManejadorBD bd = ManejadorBD.getInstancia();
        Usuario usu=this.buscarUsuarioXCorreo(Email);
        if(usu!=null)
        {
           
            bd.eliminar(new UsuarioPersistente(usu),"Usuario eliminado correctamente!");
        }
    }

    void editarUsuario(String EmailAnt,String pNombre, String pApellido, String pCorreo, String pTelefono) {

        ManejadorBD bd = ManejadorBD.getInstancia();
        Usuario usu=this.buscarUsuarioXCorreo(EmailAnt);
        if(usu!=null)
        {   usu.setmNombre(pNombre);
            usu.setmApellido(pApellido);
            usu.setmEmail(pCorreo);
            usu.setmTelefono(pTelefono);
            bd.modificar(new UsuarioPersistente(usu),"Usuario editado correctamente!");
        }
    }

    ArrayList buscarUsuarioXNombre(String pNombre) {

        ArrayList clientes=new ArrayList();
        for(Usuario usu:this.usuarios)
        {
            if(usu.getmNombre().equalsIgnoreCase(pNombre)||usu.getmApellido().equalsIgnoreCase(pNombre)||usu.getmEmail().equalsIgnoreCase(pNombre))
            {
                clientes.add(usu);
            }
        }
        return clientes;
    }

    public  Usuario buscarUsuarioXOid(int pOid) {
        for(Usuario usu:this.usuarios)
        {
            if(usu.getmOid()==pOid)
            {
                return usu;
            }
        }
        return null;
    }

}
