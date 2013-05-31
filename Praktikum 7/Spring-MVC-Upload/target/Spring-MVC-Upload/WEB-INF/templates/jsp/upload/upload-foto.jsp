<%-- 
    Document   : upload-foto
    Created on : May 17, 2013, 4:53:40 PM
    Author     : Febry Fairuz
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${!empty pesan}">
            <c:out value="${pesan}" />
        </c:if>
        <h1>Upload Foto</h1>
        <spring:form enctype="multipart/form-data">
            <p>Upload Foto : <input type="file" name="photofile" accept="image/*"></p>
            <input type="submit" value="Proses">
        </spring:form>
    </body>
</html>
