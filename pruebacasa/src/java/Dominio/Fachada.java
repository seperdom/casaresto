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
public class Fachada extends Observable{
    
    private static Fachada fachada;
    private static SSNegocio controladoraNegocio;
    
    public static Fachada getInstancia()
   {
       if(fachada==null)
       {
           fachada=new Fachada();
       }
       return fachada;
   }
 
    private Fachada(){
        
        controladoraNegocio=new SSNegocio();
    }
            
}
