<%-- 
    Document   : form
    Created on : May 3, 2013, 1:55:27 PM
    Author     : Febry Fairuz
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tambah Produk</title>
        <style>
            body{background: #e6f6f9;width:50%;margin:0 auto 0 auto;font-family: calibri}
            section{padding:20px;margin-top: 50px;background: RGBA(30,140,190,0.6);border-radius: 10px; }
            h1{color:white;font-size: 30px;margin-top: 0px}
            input{
                border-radius:5px;
                padding:10px;
                width:300px;
                border:1px solid #1e8cbe;
                margin-bottom:10px;
            }
            input:focus{
                border-radius:10px;
                border:1px solid #22be1e;
                box-shadow: 0px 1px 5px 0px #2c2c2c;
                outline: none
            }
            .button{
                width:150px;
                clear:both; 
                margin:0px 5px 0 0px;
                color:#fff;
                background: teal;
                border-radius:10px;
                font-family:arial;
                font-size:14px;
                font-weight: bold;
                padding:15px;
                text-align: center;
                cursor:pointer; 
                border:none;
                text-transform:capitalize;                
            }
        </style>
    </head>
    <body>
        <section>
        <h1>Tambah Produk</h1>       
        <form method="POST">
            <input type="text" name="kode" placeholder="Kode" required>
            <input type="text" name="nama" placeholder="Nama" required>
            <input type="text" name="harga" placeholder="Harga" required><br>
            <input type="submit" value="Simpan" class="button">
            <input type="reset" value="Batal" class="button">
        </form>        
        </section>
    </body>
</html>