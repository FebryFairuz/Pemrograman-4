<%-- 
    Document   : daftar-foto
    Created on : May 17, 2013, 7:21:01 PM
    Author     : Febry Fairuz
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Daftar Foto</h1>
        <a href="upload-foto">Input</a>
        <table border="1">
            <tr>
                <th><input type="checkbox" disabled /></th>
                <th>Nama File</th>
                <th>Ukuran File(KB)</th>
                <th>Aksi</th>
            </tr>
            <c:forEach items="${daftarFoto}" var="i">
            <tr>
                <td><input type="checkbox" /></td>
                <td>${i.namaFile}</td>
                <td>${i.ukuran}</td>
                <td><a href="<%= request.getContextPath() %>/File_Foto/${i.namaFile}">lihat</a> | <a href="hapus-foto?nama=${i.namaFile}">Hapus</a></td>
            </tr>
         </c:forEach>
        </table>
    </body>
</html>
