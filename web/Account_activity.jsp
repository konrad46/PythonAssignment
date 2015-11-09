<%-- 
    Document   : Account_activity
    Created on : Nov 9, 2015, 3:09:26 PM
    Author     : paul
--%>

<%@page import="CL.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:import url="/includes/header/html" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>User Account info</h1>
        <jsp:useBean id="test" class="User" scope="page"></jsp:useBean>
        firstName parameter: <c:out value="${param.firstName}" />
        lastName parameter: <c:out value="${param.lastName}" />

        <c:if test='${param.name != Null}'>
            ${user.firstName}+${user.lastName}
        </c:if>
         <c:if test='${param.name == Null}'>
             Not Logged in
         </c:if>
    </body>
</html>
<c:import url="/includes/footer.jsp" />
