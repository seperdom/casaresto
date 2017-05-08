package Dominio;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



/**
 *
 * @author seperdom
 */
public class Producto {
    
    
    String nombre;
    double precio;
    int oid;
    String calorias;

    public Producto(int Oid,String nombre, double precio, String calorias) {
        this.nombre = nombre;
        this.precio = precio;
        this.oid=Oid;
        this.calorias=calorias;
    }

    public String getNombre() {
        return nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }
    
    public String getCalorias(){
        return this.calorias;
    }
}
