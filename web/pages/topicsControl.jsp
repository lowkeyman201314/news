<%@ page import="cn.bdqn.news.service.topic.TopicService" %>
<%@ page import="cn.bdqn.news.service.topic.TopicServiceImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="cn.bdqn.news.pojo.Topic" %><%--
  Created by IntelliJ IDEA.
  User: bee
  Date: 2018/12/12
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //    调用service层的方法，获取主题列表
    TopicService topicService = new TopicServiceImpl();
    List<Topic> topicList = topicService.topics();
    session.setAttribute("topicList", topicList);
    //    携带数据（主题集合）页面跳转
    response.sendRedirect("/pages/topics.jsp");

%>
</body>
</html>
