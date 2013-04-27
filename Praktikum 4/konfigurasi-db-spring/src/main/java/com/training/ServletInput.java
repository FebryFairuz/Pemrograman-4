/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.training;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.ArrayList;


public class ServletInput extends HttpServlet{
    private static List<Produk> dftrHasil = new ArrayList<Produk>();

    public static void inputProduk(Produk p){
        dftrHasil.add(p);
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {
           String kode = request.getParameter("kode");
           String nama = request.getParameter("nama");
           String harga = request.getParameter("harga");
           String date = request.getParameter("date");
           Produk p = new Produk();
           p.setKode(kode);
           p.setNama(nama);
           p.setHarga(new BigDecimal(harga));
           inputProduk(p);
        } catch (Exception ex) {
            Logger.getLogger(ServletInput.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
