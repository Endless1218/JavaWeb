<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.jstl.User" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: qinzhongbin
  Date: 2021/7/14
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>test</title>
</head>
<body>

<%
    ArrayList<User> list = new ArrayList<>();
    list.add(new User("张三", 20, new Date()));
    list.add(new User("李四", 22, new Date()));
    list.add(new User("王五", 24, new Date()));
    request.setAttribute("list", list);
%>

<table border="1" width="500" align="center">
    <tr>
        <th>编号</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>生日</th>
    </tr>
<%--数据行--%>
  <c:forEach items="${list}" var="user" varStatus="s">

      <c:if test="${s.count % 2 == 0}">
          <tr bgcolor="#faebd7">
              <td>${s.count}</td>
              <td>${user.name}</td>
              <td>${user.age}</td>
              <td>${user.friendlyBirthday}</td>
          </tr>
      </c:if>

      <c:if test="${s.count % 2 != 0}">
          <tr bgcolor="#8a2be2">
              <td>${s.count}</td>
              <td>${user.name}</td>
              <td>${user.age}</td>
              <td>${user.friendlyBirthday}</td>
          </tr>
      </c:if>
  </c:forEach>
</table>

</body>
</html>
