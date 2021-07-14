<%--
  Created by IntelliJ IDEA.
  User: qinzhongbin
  Date: 2021/7/14
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>if标签</title>
</head>
<body>

<c:if test="true">
    <h1>我是真。。</h1>
</c:if>

<br/>

<%
    // 判断request域中的list是否为空，如果不为空则遍历集合
    ArrayList<String> list = new ArrayList<>();
    list.add("aa");
    request.setAttribute("list", list);
    request.setAttribute("number", 3);
%>

<c:if test="${not empty list}">
<%--    遍历集合--%>
</c:if>
<br/>

<c:if test="${number % 2 == 0}">
    ${number}为偶数
</c:if>
<c:if test="${number % 2 != 0}">
    ${number}为奇数
</c:if>


</body>
</html>
