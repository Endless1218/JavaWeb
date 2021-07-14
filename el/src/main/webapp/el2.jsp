<%--
  Created by IntelliJ IDEA.
  User: qinzhongbin
  Date: 2021/7/13
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<%
    session.setAttribute("name", "李四");
    request.setAttribute("name", "张三");
    session.setAttribute("age", 23);
%>

<h1>el获取值</h1>
${requestScope.name}
${sessionScope.age}
${sessionScope.hh}
${name}
${sessionScope.name}
</body>
</html>
