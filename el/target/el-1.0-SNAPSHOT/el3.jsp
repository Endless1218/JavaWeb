<%@ page import="com.example.el.domain.User" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: qinzhongbin
  Date: 2021/7/13
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
  User user = new User();
  user.setName("张三");
  user.setAge(23);
  user.setBirthday(new Date());

  request.setAttribute("u", user);


  ArrayList list = new ArrayList();
  list.add("aaa");
  list.add("bbb");
  request.setAttribute("list", list);
  list.add(user);

  HashMap map = new HashMap();
  map.put("name", "李四");
  map.put("gender", "男");
  map.put("user", user);
  request.setAttribute("map", map);
%>

<h3>el获取对象中的值</h3>
${requestScope.u}<br/>
<%--
通过的是对象的属性获取
setter或getter方法，去掉set或get，再将剩余部分，首字母变小写。
--%>
${requestScope.u.name}<br/>
${requestScope.u.age}<br/>
${requestScope.u.birthday}<br/>
${requestScope.u.birthday.year}<br/>
${requestScope.u.birthday.month}<br/>
<%--${requestScope.u.birthday.xx}<br/>--%>
${requestScope.u.friendlyBirthday}<br/>

<h3>el获取List中的值</h3>
${list}<br>
${list[0]}<br/>
${list[1]}<br/>
${list[10]}<br/>

${list[2].name}<br/>

<h3>el获取Map中的值</h3>
${map.name}<br/>
${map["gender"]}<br/>
${map["user"].name}<br/>
</body>
</html>
