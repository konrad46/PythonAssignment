<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:import url="/includes/header/html" /><!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>Please login via name and password</div>
       
        <form method="post" action="LoginServlet" > 
            <br/>Username:<input type="text" name="username">
            <br/>Password:<input type="password" name="password" value="$(user.password)">
            <br/><input type="submit" value="Login"> </form>

        <form action="New_customer.jsp">
    <input type="submit" value="New Customer Sign Up">
    </form>
    <form action="password_reset.jsp">
    <input type="submit" value="Reset Password">
</form>
        
    </body>
</html>
<c:import url="/includes/footer.jsp" />
