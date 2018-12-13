<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../../static/css/common.css">
</head>
<body>
<header>
    <%@include file="/pages/common/header.jsp" %>
    <br>
    <hr>
</header>

<section>
    <!--左侧功能链接-->
    <%@include file="/pages/common/asider.jsp" %>
    <!--右侧新闻主体-->
    <article class="newsContent">
        <%@include file="/pages/news.jsp"%>
    </article>
</section>