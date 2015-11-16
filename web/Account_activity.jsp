<%-- 
    Document   : Account_activity
    Created on : Nov 9, 2015, 3:09:26 PM
    Author     : paul
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header/html" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>User Account info</h1>
        
        <c:if test='${user.userName != null}'>
            ${user.firstName}+${user.lastName}
        </c:if>
         <c:if test='${user.userName == null}'>
             Not Logged in
         </c:if>
    </body>
</html>
<c:import url="/includes/footer.jsp" />
