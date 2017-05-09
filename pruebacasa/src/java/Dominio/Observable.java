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
public class Observable {
    
    private  ArrayList<Observador> observadores = new ArrayList();
    
    public void agregar(Observador obs){
        if(!observadores.contains(obs)){
            observadores.add(obs);
        }
    }
    public void eliminar(Observador obs){
        observadores.remove(obs);
    }
    public void notificar(Object param, Object msj){
        
        for(Observador obs: observadores){
            obs.actualizar(this, param,msj);
        }
    }
    public void notificar(){
        notificar(null,null);
    }
    
    public void limpiar()
    {
        this.observadores.clear();
    }
}
