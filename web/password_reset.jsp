
<%-- 
    Document   : password_reset
    Created on : Nov 9, 2015, 2:02:27 PM
    Author     : paul
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:import url="/includes/header/html" /><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <form method="post" action="LoginServlet" > 
            <br/>Username:<input type="text" name="username">
            <br/>New Password:<input type="password" name="password" value="$(user.password)">
            <br/><input type="submit" value="Account_Activity"> 
        </form>
    </body>
</html>
<c:import url="/includes/footer.jsp" />
