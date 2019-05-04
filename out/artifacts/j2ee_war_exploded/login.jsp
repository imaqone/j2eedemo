<%--
  Created by IntelliJ IDEA.
  User: 85464
  Date: 2018/10/27
  Time: 17:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>Test</title>
</head>
<body>
Please login the system
<br/>
<form action="LoginServlet"method="post">
    username:<input type="text" name="username" value="<%=request.getAttribute("username")!=null?request.getAttribute("username"):""%>"/>
    <%=request.getAttribute("msg_username")!=null?request.getAttribute("msg_username"):""%>
    <br/>
    password:<input type="password" name="password" value="<%=request.getAttribute("password")!=null?request.getAttribute("password"):""%>"/>
    <%=request.getAttribute("msg_password")!=null?request.getAttribute("msg_password"):""%><br/>
    <input type="submit" value="login"/>
    <input type="button"value="Register" onclick="location.href='register.jsp'"/>
    <br/>
    <%=request.getAttribute("msg")!=null?request.getAttribute("msg"):""%>
</form>
</body>
</html>
