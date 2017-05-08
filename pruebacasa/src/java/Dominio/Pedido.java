/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Dominio;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author seperdom
 */
public class Pedido {
    private int oid;
        private String cliente;
        private Date fecha;
        private ArrayList<Item> productos;



        public Pedido()
        {

            this.productos = new ArrayList<Item>();


        }


        public Pedido(String pCliente, Date pFecha)
        {

            this.cliente = pCliente;
            this.fecha = pFecha;

        }

        public Pedido(int pOid, String pCliente, Date pFecha)
        {
            this.oid = pOid;
            this.cliente = pCliente;
            this.fecha = pFecha;
            this.productos = new ArrayList<Item>();
        }

        public int getOid()
        {
            return this.oid;
        }

        public void setOid(int pOid)
        {
            this.oid = pOid;
        }

        public String getCliente()
        {
            return this.cliente;
        }

        public void setCliente(String pCliente)
        {
            this.cliente = pCliente;
        }

        public Date getFecha()
        {
            return this.fecha;
        }

        public void setFecha(Date pFecha)
        {
            this.fecha = pFecha;
        }

        public ArrayList<Item> getProductos()
        {

            return this.productos;
        }

        public void setProductos(ArrayList<Item> pProductos)
        {
            this.productos = pProductos;
        }



        public void agregarProductoPedido(Producto prod, int pCantidad)
        {

            if (this.productos.size() == 0)
            {
                this.productos.add(new Item(prod, pCantidad));
            }
            else
            {
                for(Item item :this.productos)
                {
                    if (item.getOid()==prod.getOid())
                    {

                        item.actualizarCantidad(pCantidad);
                        return;
                    }

                }

                this.productos.add(new Item(prod, pCantidad));


            }

        }

        public void eliminarProducto(int pOid)
        {

            for (Item item : this.productos)
            {
                if (item.getOid()==pOid)
                {
                    this.productos.remove(item);
                }
            }

        }

        public Double getPrecioTotal()
        {
            Double precio = 0.0;
            for (Item i: this.productos)
            {
                precio += (i.getPrecio() * i.getCantidad());
            }
            return precio;
        }
        
    
    
}
