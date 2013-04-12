<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="id">
	<head>
		<title>Hasil Input</title>
	</head>
	<body>
		<article>
			<h1>Verivikasi Data</h1>
			<p>Nama : <c:out value="${param.nama}" /></p>
			<p>Email : <c:out value="${param.email}" /></p>
			<p>Tanggal Input : <c:out value="${param.tgl}" /></p>
			<p>Alamat : <c:out value="${param.alamat}" /></p>
		</article>
	</body>
</html>