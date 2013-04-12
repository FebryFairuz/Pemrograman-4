<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html lang="id">
	<head>
		<title>Menampilkan Query</title>
	</head>
	<body>
		<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
			 url="jdbc:mysql://localhost/tokobagus" user="root"  password=""/>
		 
		<sql:query dataSource="${snapshot}" var="result">
		SELECT * from produk;
		</sql:query>
		<section>
			<h1>Daftar Produk</h1>
			<table border="1">
				<tr>
					<th>Kode</th>
					<th>Nama</th>
					<th>Harga</th>
					<th>Tgl Update</th>
				</tr>
				<c:forEach var="row" items="${result.rows}">
				<tr>
				   <td><c:out value="${row.kode}"/></td>
				   <td><c:out value="${row.nama}"/></td>
				   <td><c:out value="${row.harga}"/></td>
				   <td><c:out value="${row.terakhir_update}"/></td>
				</tr>
				</c:forEach>
			</table>
		</section>
	</body>
</html>