package Dominio;



/**
 * Created by Seba on 05/10/2016.
 */
public class Usuario {

    private String mNombre;
    private String mApellido;
    private String mEmail;
    private String mTelefono;
    private int mOid;

    public Usuario(String pNombre, String pApellido, String pEmail, String pTelefono) {
        this.mNombre = pNombre;
        this.mApellido = pApellido;
        this.mEmail = pEmail;
        this.mTelefono = pTelefono;
    }

    public Usuario() {

    }

    public String getmNombre() {
        return mNombre;
    }

    public void setmNombre(String mNombre) {
        this.mNombre = mNombre;
    }

    public String getmApellido() {
        return mApellido;
    }

    public void setmApellido(String mApellido) {
        this.mApellido = mApellido;
    }

    public String getmEmail() {
        return mEmail;
    }

    public void setmEmail(String mEmail) {
        this.mEmail = mEmail;
    }

    public String getmTelefono() {
        return mTelefono;
    }

    public void setmTelefono(String mTelefono) {
        this.mTelefono = mTelefono;
    }
    public int getmOid()
    {
        return this.mOid;
    }
    public void setmOid(int pOid)
    {
        this.mOid=pOid;
    }
}
