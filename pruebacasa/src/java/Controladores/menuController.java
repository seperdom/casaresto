/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controladores;

import Dominio.Item;
import Dominio.Pedido;
import Dominio.Producto;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author seperdom
 */
public class menuController extends HttpServlet {

    ArrayList<Producto> pedido = new ArrayList();
    
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
        
        String vs=request.getParameter("ddl");
        
        this.traerProductos(request, response, vs);
        if(vs!=null){
            this.cargarPedido(request,response,vs);
        }
        ArrayList<Item> ped=new ArrayList();
        ped=(ArrayList)request.getSession().getAttribute("arrayP");
        if(ped!=null){
            this.quitarItem(request, response, vs);
        }
        
        request.setAttribute("arrayP", ped);
                            request.setAttribute("arrayPedido", ped);
        this.getServletConfig().getServletContext().getRequestDispatcher("/Menu.jsp").forward(request, response);
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

    private ArrayList<Producto> cargarProductos(String valor)
    {
        ArrayList<Producto> productos=new ArrayList();
        if(valor.equalsIgnoreCase("1"))
        {   
                productos=new ArrayList();
            productos.add(new Producto(6,"vegeta1",90.00,"10"));
            productos.add(new Producto(2,"vegeta2",100.00,"5"));
            productos.add(new Producto(3,"vegeta3",110.00,"23"));
            productos.add(new Producto(4,"vegeta4",120.00,"8"));
            productos.add(new Producto(5,"vegeta5",130.00,"12"));   
        }
        if(valor.equalsIgnoreCase("2"))
        {
                productos=new ArrayList();
            productos.add(new Producto(6,"carne1",90.00,"34"));
            productos.add(new Producto(2,"carne2",100.00,"13"));
            productos.add(new Producto(3,"carne3",110.00,"10"));
            productos.add(new Producto(4,"carne4",120.00,"11"));
            productos.add(new Producto(5,"carne5",130.00,"25"));   
        }
        return productos;
    }

    private void traerProductos(String vs) {

        
    }

    private void traerProductos(HttpServletRequest request, HttpServletResponse response, String vs) throws ServletException, IOException {

        ArrayList productos;
         
         if(vs!=null ){
             productos=this.cargarProductos(vs);
             request.setAttribute("prodCat", productos);
             request.getSession().setAttribute("servletMsg", vs); 
             
       
        
         }
         else{
             productos=this.cargarProductos("1");
             request.setAttribute("prodCat", productos);
             
             request.getSession().setAttribute("servletMsg", vs); 
           
        
         }
    }

    private void cargarPedido(HttpServletRequest request, HttpServletResponse response,String vs) throws ServletException, IOException {

         double total=0;
        
            if(request.getSession().getAttribute("arrayP")==null){
                request.getSession().setAttribute("arrayP", new ArrayList());
            }
            ArrayList<Item> ped=new ArrayList();
            
            boolean existe=false;
                    ped=(ArrayList)request.getSession().getAttribute("arrayP");
                    int cant=0;
                for(Producto p :this.cargarProductos(vs)){
                    String oid=String.valueOf(p.getOid());
                    if(request.getParameter("btn"+oid)!=null){
                        
                        request.getSession().setAttribute("btn", String.valueOf(p.getOid()));
                        if(ped.isEmpty()){
                            ped.add(new Item(p,1));
                            request.setAttribute("arrayP", ped);
                            request.setAttribute("arrayPedido", ped);
                            total+=p.getPrecio();
                                request.setAttribute("total", String.valueOf(total));
                            return;
                        }
                        if(ped.size()>0){
                           for(Item i:ped){
                            if(i.getOid()==p.getOid()){
                                existe=true;
                                int act=i.getCantidad()+1;
                                i.actualizarCantidad(act);
                                total+=Double.parseDouble(i.getTotal());
                              //  request.getSession().setAttribute("cantItem", String.valueOf(i.getCantidad()));
                               request.setAttribute("total", String.valueOf(total));
                                if(request.getParameter(oid)!=null&& request.getParameter(oid)==null){
                                    int cantItem=0;
                                cantItem=Integer.parseInt(request.getParameter(oid));
                                i.actualizarCantidad(cantItem);
                                total+=Double.parseDouble(i.getTotal());
                              //  request.getSession().setAttribute("cantItem", String.valueOf(i.getCantidad()));
                               request.setAttribute("total", String.valueOf(total));
                               return;
                                }
                            }
                            
                        } 
                           if(existe==false)
                           {
                              
                                ped.add(new Item(p,1));
                                total+=p.getPrecio();
                                request.setAttribute("total", String.valueOf(total));
                                //return;
                            
                           }
                           //request.getSession().setAttribute("cantItem", );
                           
                        }
                        
                        
                        
                    }else{
                    for(Item i:ped){
                        String oid2=String.valueOf(i.getOid());
                        if(request.getParameter(oid)!=null ){
                            int cantItem=0;
                                cantItem=Integer.parseInt(request.getParameter(oid2));
                                i.actualizarCantidad(cantItem);
                                total+=Double.parseDouble(i.getTotal());
                                request.setAttribute("total", String.valueOf(total));
                                
                                
                        }
                       
                    }     
                    }
                    request.setAttribute("arrayP", ped);
                            request.setAttribute("arrayPedido", ped);
                }
                
           // request.getSession().setAttribute("servletMsg", vs); 
    }
    
    private void quitarItem(HttpServletRequest request, HttpServletResponse response,String vs) throws ServletException, IOException {
       
        ArrayList<Item> ped=new ArrayList();  
        
                    
                      
                       ped=(ArrayList)request.getSession().getAttribute("arrayP"); 
                       
                       for(Item i:ped){
                           String oid=String.valueOf(i.getOid());
                            
                          String r=request.getParameter("quitar"+oid);    
                        if(r!=null) {
                        
                            ped.remove(i);
                            request.setAttribute("arrayP", ped);
                            request.setAttribute("arrayPedido", ped);
                            return;
                    }
        }
                       }
    
    
}
