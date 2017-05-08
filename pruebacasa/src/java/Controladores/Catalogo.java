/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controladores;

import Dominio.Item;
import Dominio.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author seperdom
 */
public class Catalogo extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        doPost(request, response);
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
        ArrayList<Producto> ped=new ArrayList();
        ped=this.cargarProductos();
        request.setAttribute("arrayP", ped);
                            
        this.getServletConfig().getServletContext().getRequestDispatcher("/Catalogo.jsp").forward(request, response);
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
    
    private ArrayList<Producto> cargarProductos()
    {
        ArrayList<Producto> productos=new ArrayList();
          
                
            productos.add(new Producto(6,"vegeta1",90.00,"10"));
            productos.add(new Producto(2,"vegeta2",100.00,"5"));
            productos.add(new Producto(3,"vegeta3",110.00,"23"));
            productos.add(new Producto(4,"vegeta4",120.00,"8"));
            productos.add(new Producto(5,"vegeta5",130.00,"12"));   
        
                
            productos.add(new Producto(7,"carne1",90.00,"34"));
            productos.add(new Producto(8,"carne2",100.00,"13"));
            productos.add(new Producto(11,"carne3",110.00,"10"));
            productos.add(new Producto(10,"carne4",120.00,"11"));
            productos.add(new Producto(11,"carne5",130.00,"25"));   
        
        
        return productos;
    }

}
