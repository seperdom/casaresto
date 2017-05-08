package Persistencia;

import java.sql.ResultSet;

/**
 * Created by Seba on 05/10/2016.
 */
public interface Persistente {

    public String getInsertSql();

    public void setOid(int oid);

    public String getUpdateSql();

    public String getDeleteSql();

    public String getSelectSql();

    public int getOid();

    public void leer(ResultSet rs);

    public Persistente getNuevo();

    public Object getObjeto();

    public String obtenerXFecha(String pMes, String pAnio);

    public String obtenerXFecha(String pOid);

    public String obtenerXOid(String pOid);

    public String obtenerXNombre(String pNombre);

    public String obtenerDisponible(String pMesA,String pMesB, String pAnioA,String pAnioB, String pIni,String pFin);

}
