<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/24/2018
  Time: 9:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: dangkhoa
  Date: 22/05/2018localhost:8080/home/
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form method="post" action="/calculate">
    <legend>Calculator</legend>
    <table>
        <tr>
            <td>First operand:</td>
            <td><input name="firstOperand" type="text"/></td>
        </tr>
        <tr>
            <td>Operator:</td>
            <td>
                <select name="operator">
                    <option value="+">Addition</option>
                    <option value="-">Subtraction</option>
                    <option value="*">Multiplication</option>
                    <option value="/">Division</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Second operand:</td>
            <td><input name="secondOperand" type="text"/></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Calculate"/></td>
        </tr>
    </table>
</form>
</body>
</html>