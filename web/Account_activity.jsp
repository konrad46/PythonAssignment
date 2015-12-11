<%-- 
    Document   : Account_activity
    Created on : Nov 9, 2015, 3:09:26 PM
    Author     : paul
--%>


<%@page import="javax.transaction.Transaction"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header/html" />
<%@page import="java.lang.Object"%>
<%@page import="java.util.List"%>
<%@page import="CL.Account"%>
<%@page import="CL.TransactionServlet"%>

<div class="jumbotron">
    <div class="container">
        <h1>Account Activity</h1>
        <c:if test = "${user == null}">
            <p>Hey There! You're not logged in.</p>
            <p><a class="btn btn-primary btn-lg" href="login.html" role="button">Login &raquo;</a></p>
        </c:if>
        <c:if test = "${user != null}">
            <p>Howdy ${sessionScope.user.firstName} ${sessionScope.user.lastName}, you are logged in!</p>
        </c:if>
    </div>
</div>

<div class="container">

    <h1>Your Recent Activity</h1>

    <table class="table">
        <tr>
            <th>Date</th>
            <th>Transaction Type</th>
            <th>Amount</th>
        </tr>

        <c:forEach var="item" items="${user.transactionHistory}">
            <tr>
                <td>${item.date}</td>
                <td>${item.type}</td>
                <td>${item.transAmtCurrencyFormat}</td>
            </tr>
        </c:forEach>
    </table>

</div> <!--end of container-->

<c:import url="/includes/footer.jsp" />
