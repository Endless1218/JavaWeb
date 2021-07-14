<%--
  Created by IntelliJ IDEA.
  User: qinzhongbin
  Date: 2021/7/13
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="top.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>主体信息</h3>

<%
    pageContext.setAttribute("name", "QQQ");
%>

<%=pageContext.getAttribute("name")%>
</body>
</html>
