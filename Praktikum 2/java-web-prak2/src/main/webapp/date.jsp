<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="id">
    <head>
        <title>Tanggal Sekarang</title>        
    </head>
    <body>
		<c:set var="now" value="<%=new java.util.Date()%>" />
        <h1>Tanggal dan Waktu Sekarang</h1>
        <p>hari dan tanggal saat ini :<time><%= new java.util.Date() %></time><br>
        waktu saat ini : <time><fmt:formatDate type="time" value="${now}" /></time></p>
    </body>
</html>