/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.framework;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class ProdukMapper implements RowMapper<Produk> {
    public Produk mapRow(ResultSet rs, int rowNum) throws SQLException {
      Produk pro = new Produk();
      pro.setNama(rs.getString("nama"));
      pro.setKode(rs.getString("kode"));
      pro.setHarga(rs.getBigDecimal("harga"));
      return pro;
   }
}
    

