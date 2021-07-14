<%--
  Created by IntelliJ IDEA.
  User: qinzhongbin
  Date: 2021/7/14
  Time: 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>el隐式对象</title>
</head>
<body>


${pageContext.request}<br>
<h3>再jsp页面动态获取虚拟目录</h3>
${pageContext.request.contextPath}<br/>
</body>
</html>
