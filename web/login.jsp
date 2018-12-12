<%--
  Created by IntelliJ IDEA.
  User: bee
  Date: 2018/12/10
  Time: 8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
<form action="control.jsp" method="post">
    <table align="center" border="0">
        <thead>
        <tr>
            <td colspan="2" align="center">用户登录</td>
        </tr>
        </thead>
        <tbody>
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="userName" id="userName"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" name="pwd" id="password"></td>
            </tr>
            <tr>
                <td colspan="2"><hr></td>
            </tr>
            <tr>
                <td colspan="2" align="center">没有账号？立即<a href="reg.jsp">注册</a>一个</td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="登录">&nbsp;&nbsp;
                    <input type="reset" value="取消">
                </td>
            </tr>
        </tbody>
    </table>
</form>
</body>
</html>
