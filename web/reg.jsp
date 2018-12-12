<%--
  Created by IntelliJ IDEA.
  User: bee
  Date: 2018/12/10
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
</head>
<body>
<%--错误信息提示--%>
<%
    request.setCharacterEncoding("utf-8");
    String msg=(String)request.getAttribute("msg");

%>
<div>
    <%=msg!=null && !msg.equals("") ? request.getAttribute("msg"):"" %>
</div>
<form action="regControl.jsp" method="post">
    <table align="center" border="0">
        <thead>
        <tr>
            <td colspan="2" align="center">用户注册</td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="userName" id="userName"
                       value="<%=request.getParameter("userName")==null ?"":request.getParameter("userName") %>"></td>
        </tr>
        <tr>
            <td>输入密码：</td>
            <td><input type="password" name="pwd1" id="password1"
                value="<%=request.getParameter("pwd1")==null ?"":request.getParameter("pwd1") %>"></td>
        </tr>
        <tr>
            <td>再次输入密码：</td>
            <td><input type="password" name="pwd2" id="password2"
                value="<%=request.getParameter("pwd2")==null ?"":request.getParameter("pwd2") %>"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="注册">&nbsp;&nbsp;
                <input type="reset" value="取消">
            </td>
        </tr>
        </tbody>
    </table>
</form>
</body>
</html>
