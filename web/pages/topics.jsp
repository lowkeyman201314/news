<%@ page import="cn.bdqn.news.pojo.Topic" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: bee
  Date: 2018/12/12
  Time: 15:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../static/css/common.css">
</head>
<body>
<header>
    <%@include file="/pages/common/header.jsp" %>
    <br>
    <hr>
</header>
<section>
    <!--左侧功能链接-->
    <asider class="newsList">
        <%@include file="/pages/common/asider.jsp" %>
    </asider>
    <!--右侧新闻主体-->
    <article class="newsContent">
        <table align="left">
            <%
                //    从request或者session作用域获取主题列表集合
                List<Topic> topicList = (List<Topic>) session.getAttribute("topicList");
                //    遍历主题列表
                for (Topic topic : topicList) {
            %>

            <tr>
                <td><%=topic.gettName()%>&emsp;&emsp;&emsp;</td>
                <td><a href="publicTopicControl.jsp?opr=modify&id=<%=topic.gettId()%>&name=<%=topic.gettName()%>">修改</a>&emsp;&emsp;&emsp;</td>
                <td><a href="publicTopicControl.jsp?opr=del&id=<%=topic.gettId()%>&name=<%=topic.gettName()%>">删除</a>&emsp;&emsp;&emsp;</td>
            </tr>

            <%
                }
            %>
        </table>
    </article>
</section>






</body>
</html>
