<%--
  Created by IntelliJ IDEA.
  User: bee
  Date: 2018/12/12
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加主题</title>
</head>
<body>
<h6>添加主题</h6>
<form action="topicControl.jsp" method="post">
    <div>主题名称：<input type="text" name="topicName" value=""></div>
    <div>
        <input type="submit" value="提交">&emsp;&emsp;&emsp;&emsp;
        <input type="reset" value="重置">
    </div>
</form>
</body>
</html>
