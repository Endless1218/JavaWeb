<%--
  Created by IntelliJ IDEA.
  User: qinzhongbin
  Date: 2021/7/14
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>choose标签</title>
</head>
<body>
<%--
完成数字编号对应星期几案例
--%>

<%
    request.setAttribute("number", 22);
%>

<c:choose>

    <c:when test="${number == 1}">星期一</c:when>
    <c:when test="${number == 2}">星期二</c:when>
    <c:when test="${number == 3}">星期三</c:when>
    <c:when test="${number == 4}">星期四</c:when>
    <c:when test="${number == 5}">星期五</c:when>
    <c:when test="${number == 6}">星期六</c:when>
    <c:when test="${number == 7}">星期日</c:when>
    <c:otherwise>数字输入有误</c:otherwise>
</c:choose>
</body>
</html>
