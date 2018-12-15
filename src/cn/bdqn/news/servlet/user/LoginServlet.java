package cn.bdqn.news.servlet.user;

import cn.bdqn.news.pojo.News;
import cn.bdqn.news.pojo.User;
import cn.bdqn.news.service.news.NewsService;
import cn.bdqn.news.service.news.NewsServiceImpl;
import cn.bdqn.news.service.user.UserService;
import cn.bdqn.news.service.user.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * @Author: bee
 * @Date: 2018/12/15 10:49
 * @Description: Servlet中书写的代码，
 * 就是原来jsp页面中java小脚本里调用service层方法的内容
 */
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {
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
                //创建session对象
                HttpSession session=request.getSession();

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
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
