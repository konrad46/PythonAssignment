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
        <title>New customer</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
    </head>
    <body>
        <div>Enter your information</div>
        <form action="success.jsp" method="post">
            <label>First name:</label>
            <input type="text" name="firstName" ><br>
            <label>Last name:</label>
            <input type="text" name="lastName" ><br>
            <label>Phone:</label>
            <input type="text" name="phone" ><br>
            <label>Address:</label>
            <input type="text" name="address"><br>
            <label>City:</label>
            <input type="text" name="city" ><br>
            <label>State:</label>
            <input type="text" name="state" ><br>
            <label>Zip code:</label>
            <input type="text" name="zipCode" ><br>
            <label>Email:</label>
            <input type="text" name="email"  ><br>
            
            
            
    <input type="submit" value="Create">
            </form>
        
    </body>
</html>
<c:import url="/includes/footer.jsp" />
