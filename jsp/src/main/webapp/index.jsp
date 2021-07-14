<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage="500.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet</a>

<%
    ArrayList<Object> objects = new ArrayList<>();

    int a = 3 / 0;
%>

<c:if test=""/>
<c:forEach begin="0" step="1" end="6"/>

</body>
</html>