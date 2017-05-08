/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Dominio;

import java.util.ArrayList;

/**
 *
 * @author seperdom
 */
public class Chat {
    
    private ArrayList<MensajeChat> listaChats;

        public Chat()
        {
            this.listaChats = new ArrayList<MensajeChat>();

        }

        public ArrayList<MensajeChat> getListaChats()
        {
            return this.listaChats;
        }

        public void agregarMensaje(MensajeChat pMensaje)
        {
            this.listaChats.add(pMensaje);
        }
}
