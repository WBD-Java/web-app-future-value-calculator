<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 8/3/2018
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
    <style>
        body{
            width: 500px;
            margin: auto;
        }

    </style>
</head>
<body>
<h1>Future value Calculator</h1>
    <fieldset>
        <legend>Future Value Calculator</legend>
        <table>
            <tr>
                <td>Inventment Amount: </td>
                <td>$<%=request.getParameter("amount")%></td>
            </tr>
            <tr>
                <td>Yearly Interest Rate:</td>
                <td><%=request.getParameter("rate")%>%</td>
            </tr>
            <tr>
                <td>Number of Years: </td>
                <td><%=request.getParameter("years")%> years</td>
            </tr>
            <tr>
                <td>Future value of years: </td>
                <td>$${future}</td>
            </tr>
        </table>
    </fieldset>
</body>
</html>
