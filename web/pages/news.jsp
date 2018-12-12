<%@ page import="cn.bdqn.news.pojo.News" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="">
    <%--展示从service层拿到的新闻集合--%>
    <table>
        <%
            List<News> newsList = (List<News>) session.getAttribute("newsList");
            for (News news : newsList) {
        %>
        <tr>
            <td><%=news.getnTitle()%></td>
            <td>作者：<%=news.getnAuthor()%></td>
            <td><a href="#">修改&emsp;&emsp;</a></td>
            <td><a href="#">删除&emsp;&emsp;</a></td>
        </tr>

        <%
            }
        %>
    </table>
</div>
