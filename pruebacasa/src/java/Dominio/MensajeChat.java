/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Dominio;

/**
 *
 * @author seperdom
 */
public class MensajeChat {
    
    private String destinatario;
        private String mensaje;
        private String emisor;

        public MensajeChat()
        {

        }



        public MensajeChat(String pEmisor, String pDestinatario, String pMensaje)
        {
            this.destinatario = pDestinatario;
            this.mensaje = pMensaje;
            this.emisor = pEmisor;
        }

        public String getMensaje()
        {
            return this.mensaje;
        }

        public String getDestinatario()
        {
            return this.destinatario;
        }

        public String getEmisor()
        {
            return this.emisor;
        }
}
