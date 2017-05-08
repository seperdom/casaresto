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
public class Item {
    
    private int oidProducto;
        private int cantidad;
        private Double precio;
        private String nombre;

        public Item(Producto pProd, int pCantidad)
        {
            this.oidProducto = pProd.getOid();
            this.cantidad = pCantidad;
            this.precio = pProd.getPrecio();
            this.nombre = pProd.getNombre();
        }

        public int getOid()
        {
            return this.oidProducto;
        }

        public int getCantidad()
        {
            return this.cantidad;
        }

        public void setCantidad(int pCantidad)
        {
            this.cantidad = pCantidad;
        }

        public Double getPrecio()
        {
            return this.precio;
        }

        public String getNombre()
        {
            return this.nombre;
        }


        public void actualizarCantidad(int pCantidad)
        {
            this.cantidad=pCantidad;
        }
        
        public String getTotal()
        {
            String total=String.valueOf(this.cantidad*this.precio);
            return total;
        }
}
