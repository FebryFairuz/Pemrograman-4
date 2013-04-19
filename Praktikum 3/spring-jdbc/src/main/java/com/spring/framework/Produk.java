package com.spring.framework;

import java.math.*;

public class Produk {
    private Integer id;
    private String kode;
    private String nama;
    private BigDecimal harga;
    
    public void setNama(String nama){
        this.nama=nama;
    }
    public String getNama(){
        return nama;
    }
    public void setKode(String kode){
        this.kode=kode;
    }
    public String getKode(){
        return kode;
    }
    public void setHarga(BigDecimal harga){
        this.harga=harga;
    }
    public BigDecimal getHarga(){
        return harga;
    }    
}
