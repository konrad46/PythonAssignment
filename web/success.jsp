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
        <title>Welcome</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>the account has been successfully created</div>
        <label>${user.firstName}</label>
        <label>${user.lastName}</label>
        <label>${user.phone}</label>
        <label>${user.address}</label>
        <label>${user.city}</label>
        <label>${user.state}</label>
        <label>${user.zipCode}</label>
        <label>${user.userName}</label>
        <label>${user.password}</label>
        
    </body>
</html>
<c:import url="/includes/footer.jsp" />

