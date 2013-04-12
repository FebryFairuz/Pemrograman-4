<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="id">
	<head>
		<title>Input Data</title>
	</head>
	<body>
		<h1>Input Data</h1>
		<form action="hasil.jsp" method="POST">
		<table>
			<tr>
				<td>Nama</td>
				<td><input type="text" name="nama" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="email" name="email" /></td>
			</tr>
			<tr>
				<td>Tanggal Lahir</td>
				<td><input type="date" name="tgl" /></td>
			</tr>
			<tr>
				<td>Alamat</td>
				<td><textarea cols="20" rows="10" name="alamat"></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Simpan"></td>
			</tr>			
		</table>
		</form>
	</body>
</html>