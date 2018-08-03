<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 8/3/2018
  Time: 10:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Futere Value Calculator</title>
    <link rel="stylesheet" href="index.css" type="text/css">
  </head>
  <body>
  <h1>Future value Calculator</h1>

  ${error}

  <form method="post" action="/calculate">
    <fieldset>
      <legend>Future Value Calculator</legend>
      <table>
        <tr>
          <td>Inventment Amount: </td>
          <td><input type="text" name="amount" placeholder="Enter inventment amount"></td>
        </tr>
        <tr>
          <td>Yearly Interest Rate:</td>
          <td><input type="text" name="rate" placeholder="Enter yearly interest rate"></td>
        </tr>
        <tr>
          <td>Number of Years: </td>
          <td><input type="text" name="years" placeholder="Enter years"></td>
        </tr>
        <tr>
          <td></td>
          <td><input type="submit" value="Calculator"></td>
        </tr>
      </table>
    </fieldset>
  </form>
  </body>
</html>
