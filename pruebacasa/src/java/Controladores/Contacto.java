/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controladores;

import Dominio.Chat;
import Dominio.MensajeChat;
import Dominio.Notificaciones;
import Dominio.Observable;
import Dominio.Observador;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import javax.net.ssl.HttpsURLConnection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





/**
 *
 * @author seperdom
 */
public class Contacto extends HttpServlet implements Observador{

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String textoChat=request.getParameter("txtUsuario");
        if(request.getParameter("btnChat")!=null){
        if(request.getSession().getAttribute("chat")==null){
            request.getSession().setAttribute("chat",new Chat());
            
        }
        if(!textoChat.equals("")){
            
            String idS=(String)request.getSession().getId();
            Chat chat=(Chat)request.getSession().getAttribute("chat");
            chat.agregarMensaje(new MensajeChat(idS,"CasaR",textoChat));
            chat.agregarMensaje(new MensajeChat("CasaR",idS,"respuesta a "+textoChat ));
            //request.getSession().setAttribute("chat", chat);
            EnviaMensaje(textoChat,idS);
            
        }
        }
        
        this.getServletConfig().getServletContext().getRequestDispatcher("/Contacto.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    @Override
    public void actualizar(Observable origen, Object param) {       
                
      /*  if(param==Notificaciones.iniciarJuego)
        {            
            refrescar();
           
        }       
        else if(param==Notificaciones.seguirJugando)
        {            
            boolean anoto=juego.anoto(jugador);
            dt.actualizarDatos(anoto);            
            cartonera.actualizarPaneles();
        }            
              
        else if(param==Notificaciones.abandonaJuego)
        {
            dt.actualizarDatos(false);
        }
        
        else if(param==Notificaciones.finJuego)
        {
            
            String nl = System.getProperty("line.separator");
            cartonera.actualizarPaneles();
            Jugador jugadorGanador=juego.getJugadorGanador();
            boolean anoto;
            anoto = juego.anoto(jugador);
            dt.actualizarFinJuego(anoto);            
            JOptionPane.showMessageDialog(null,"El ganador fue: " + jugadorGanador.getNombre()
            + nl +"Su saldo actual es: "+jugador.getSaldo()
            + nl + "El juego ha terminado!!!");
            this.dispose();
            
        }   */ 
        
    }
    
    public Boolean EnviaMensaje(String mensaje, String pId)
    {

        String respuesta = "OK";

        Boolean flag = false;

        try
        {
            //ServicioRegistroGCM svc = new ServicioRegistroGCM();

            URL URL_GOOGLE_CLOUD_MESSAGE=new URL("https://gcm-http.googleapis.com/gcm/send");
            String registration_id = "etsQUx6gYho:APA91bG2x-jSO38k8hsO3MURogVmUUCwn5uBDg-vO0JHSRtcqv3WCmP4jBuiejme_MJP7Ju4c8fwCiFni_G2bLj0JLbTqkttA86MEPP_5vzibeafZGbXdM2gfkCkKEfZL0guGahKDsMA";
            //String registration_id = "cSzRA3a7icU:APA91bG7LgnW8d3HRpRUlH4connhBKYXbPKU-rzYsLx8ZK9Hzymz42ZCPH4TEYEfNE-w2j0h9K45KXH4KtQgeWmkPU-9J9i9brdQ0odpGozkENGwLkeuLRcFa9fsF2sA7M9Y5qEP0ust";

            String textoChat=mensaje;
            //
            //  if (registration_id == "")
            // {
            //     throw new Exception("No se encontro ningun dispositivo registrado conb el IMEI: " + imei);
            // }
            String apiKey = "AIzaSyD8wwAYNwRY3FZrYb46BiRpX5UTn1DMXzA";
            //Request request = WebRequest.Create("https://gcm-http.googleapis.com/gcm/send");
            String collapse_Key = new Date().toString();
            //mensaje = String.format("registration_id={0}&data.mi_mensaje={2}&data.emisor={3}",
       // registration_id,
         //mensaje,
         //pId);
            
            HttpsURLConnection conn = (HttpsURLConnection) URL_GOOGLE_CLOUD_MESSAGE.openConnection();
            
           //Gson gson= new Gson();
            //Enviar la solicitud
            //StreamWriter oWriter = new StreamWriter(request.GetRequestStream(), System.Text.Encoding.Default)
            //    oWriter.Write(mensaje);
           // HttpWebResponse response = (HttpWebResponse)request.GetResponse();
           // StreamReader stremReader = new StreamReader(response.GetResponseStream(), System.Text.Encoding.Default);
             conn.setRequestMethod("POST");
             //conn.getHeaderField(apiKey);
      conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
      conn.setRequestProperty("Accept-Encoding", "application/x-www-form-urlencoded;charset=UTF-8");
      conn.setRequestProperty("Authorization","key=" +apiKey);
        String m="registration_id="+registration_id+"&data.mi_mensaje="+mensaje+"&data.emisor="+pId+"";
      if(m!=null){
        conn.setDoOutput(true);
        OutputStream os = conn.getOutputStream();
        os.write(m.getBytes("UTF-8"));
        os.flush();
      }
            if (conn.getResponseCode() == 200)
            {
                //El mensaje se procesó correctamente - HTTP 200
BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
      String outputLine;
      StringBuffer totalSalida = new StringBuffer();
      System.out.println("Output from Server .... \n");
      while ((outputLine = br.readLine()) != null) {
        totalSalida.append(outputLine/*new String(outputLine.getBytes("ISO-8859-1"), "UTF-8")*/);
      }
      conn.disconnect();
      flag=true;
               // string linea1 = stremReader.ReadLine();
               // string linea2 = stremReader.ReadLine();

               /* if (linea1.StartsWith("id"))
                {
                    respuesta = "Mensaje enviado correctamente. Id mensaje: " + linea1;
                    flag = true;
                    //verificamos segunda linea
                    if (linea2 != null && linea2.StartsWith("registration_id"))
                    {
                        //Actualizamos registration token en la base de datos
                        respuesta = "Mensaje enviado correctamente. El id de registro cambio. Id mensaje: " + linea1 + "\n" + linea2;

                        registration_id = linea2.Split('=')[2];
                        flag = true;
                    }

                }
                if (linea1.StartsWith("Error"))
                {
                    if (linea1 == "Error=InvalidRegistration")
                        throw new Exception("Registration Token no valido. " + linea1);

                    if (linea1 == "Error=NotRegistered")
                    {
                        //La apicacion cliente se desinstalo del dispositivo o se desregistro de GCM.
                        throw new Exception("Dispositivo no registrado. Elimine el registro de la base de datos" + linea1);
                    }
                }*/
            }
            else
            {
                switch (conn.getResponseCode())
                {
                    case 400:
                        respuesta = "La solicitud no fue entendida por el servidor.";
                        break;
                    case 401:
                        respuesta = "La API Key de la plicacion servidor no es valida.";
                        break;
                    case 404:
                        respuesta = "El recurso slicitado no existe, verifique la URL.";
                        break;
                    case 503:
                        respuesta = "Servicio no disonible, intentes mas tarde.";
                        break;
                    default:
                        respuesta = "Error esconocido: " + conn.getResponseMessage();
                        break;
                }
                   
            }

            //stremReader.Close();
            //response.Close();
            /*Fachada fachada = new Fachada();
            if (cliente != null)
            {
                fachada.insertarChat(cliente.getNombre(), cliente.getNombre(), this.txtUsuario.Value);
            }
            else if (cliente == null)
            {
                fachada.insertarChat(Session.SessionID, Session.SessionID, this.txtUsuario.Value);
            }*/




        }
        catch (Exception ex)
        {
            respuesta = ex.getMessage();
        }



        //chat = (Chat)Session[Session.SessionID];
        //chat.agregarMensaje(new MensajeChat(Session.SessionID, "casa Resto", this.txtUsuario.Value));


        return flag;
    }


}
