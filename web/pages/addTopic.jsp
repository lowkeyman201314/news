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
        <h6>添加主题</h6>
        <form action="publicTopicControl.jsp?opr=add" method="post">
            <div>主题名称：<input type="text" name="name" class="name"></div>
            <div>
                <input type="submit" value="提交">&emsp;&emsp;&emsp;&emsp;
                <input type="reset" value="重置">
            </div>
        </form>
    </article>
</section>
</body>
</html>
