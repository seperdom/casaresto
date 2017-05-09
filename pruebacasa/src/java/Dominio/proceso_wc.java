/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Dominio;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author seperdom
 */
@WebService(serviceName = "proceso_wc")
public class proceso_wc {

    /**
     * This is a sample web service operation
     */
    
    @WebMethod (operationName = "RegistroCliente")public int RegistroCliente(String pDestinatario,String pMensaje)
    {

        //var context = GlobalHost.ConnectionManager.GetHubContext<NotificationHub>();
        int res = 1;    
        Fachada fachada = Fachada.getInstancia();
        // bool resultado = fachada.insertarChat(pEmisor, pDestinatario, pMensaje);
        //context.Clients.All.SendNotifications(pMensaje);
        System.out.println(pMensaje);
        //  if (resultado == true)
        //{
        //  res = 1;
        fachada.notificar(pDestinatario, pMensaje);
        //}

        return res;
    }
}
