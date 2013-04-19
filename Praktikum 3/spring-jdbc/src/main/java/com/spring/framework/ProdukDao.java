package com.spring.framework;

import com.spring.framework.Produk;
import com.spring.framework.ProdukMapper;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;

public class ProdukDao {
    private DataSource ds;
    private JdbcTemplate js;
   
    public void simpan(Produk p){
      String SQL = "insert into produk (kode, nama,harga) values (?, ?,?)";      
      js.update( SQL, p.getNama(), p.getHarga(),p.getKode());
      System.out.println("Created Record");
      return;
    }
    public List<Produk> cariSemuaProduk(){
      String SQL = "select * from produk";
      List <Produk> produk = js.query(SQL,new ProdukMapper());
      return produk;
    }
}
