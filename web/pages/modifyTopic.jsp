<%@ page import="cn.bdqn.news.pojo.Topic" %><%--
  Created by IntelliJ IDEA.
  User: bee
  Date: 2018/12/12
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>编辑主题</title>
</head>
<body>
<h6>编辑主题</h6>
<form action="modifyTopicControlEnd.jsp" method="post">
    <div>主题ID：<input type="hidden" name="id" value="<%=((Topic)request.getAttribute("topic")).gettId()%>"></div>
    <div>主题名称：<input type="text" name="topicName" value="<%=((Topic)request.getAttribute("topic")).gettName()%>"></div>
    <div>
        <input type="submit" value="修改">&emsp;&emsp;&emsp;&emsp;
        <input type="reset" value="重置">
    </div>
</form>
</body>
</html>

