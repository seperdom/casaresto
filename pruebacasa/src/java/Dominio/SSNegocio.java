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
class SSNegocio {
    
    private static SSNegocio controladoraNegocio;
    
    public static SSNegocio getNegocio(){
        
        if(controladoraNegocio==null){
           controladoraNegocio=new SSNegocio();
        }
        return controladoraNegocio;
    }
    
    
}
