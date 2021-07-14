<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: qinzhongbin
  Date: 2021/7/14
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>foreach标签</title>
</head>
<body>

<c:forEach begin="1" end="10" var="i" step="2">
    ${i}<br>
</c:forEach>

<br/>

<c:forEach begin="1" end="10" var="i" step="2" varStatus="s">
    ${i} ${s.index} ${s.count} <br>
</c:forEach>

<br/>


<%
    ArrayList<String> list = new ArrayList<>();
    list.add("aa");
    list.add("bb");
    list.add("cc");
    request.setAttribute("list", list);
%>

<c:forEach items="${requestScope.list}" var="str" varStatus="s">
    ${s.index} ${s.count} ${str}<br/>
</c:forEach>


</body>
</html>

