<%@ page import="cn.bdqn.news.service.user.UserService" %>
<%@ page import="cn.bdqn.news.service.user.UserServiceImpl" %>
<%@ page import="cn.bdqn.news.pojo.User" %>
<%@ page import="cn.bdqn.news.service.news.NewsService" %>
<%@ page import="cn.bdqn.news.pojo.News" %>
<%@ page import="cn.bdqn.news.service.news.NewsServiceImpl" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: bee
  Date: 2018/12/10
  Time: 8:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>控制页面</title>
</head>
<body>
<%--获取表单数据--%>
<%
    //设置字符集编码格式
    request.setCharacterEncoding("UTF-8");
    //获取用户名和密码
    String name = request.getParameter("userName");
    String pwd = request.getParameter("pwd");
    //调用service层的login()验证用户信息
    UserService userService = new UserServiceImpl();
    User user = userService.login(name, pwd);

    if (user != null) {
        if (user.getuName().equals(name)
                && user.getuPwd().equals(pwd)) {
            //把用户信息存储到session
            session.setAttribute("userName", user.getuName());
            //设置session过期时间
            session.setMaxInactiveInterval(10);

            //=============获取新闻集合=============
            NewsService newsService=new NewsServiceImpl();
            List<News> newsList = newsService.getNewsList();
            //============存储到session作用域===========
            session.setAttribute("newsList",newsList);

            //页面跳转:转发/重定向
            request.getRequestDispatcher("admin.jsp")
                    .forward(request, response);
        } else {
            //如果没有通过验证，则让用户继续停留在登录页面
            response.sendRedirect("login.jsp");
            return;
        }
    } else {
        //用户不存在
        response.sendRedirect("login.jsp");
        return;
    }
%>
</body>
</html>
