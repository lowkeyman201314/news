<%@ page import="cn.bdqn.news.service.user.UserService" %>
<%@ page import="cn.bdqn.news.service.user.UserServiceImpl" %>
<%@ page import="cn.bdqn.news.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: bee
  Date: 2018/12/10
  Time: 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    /*获取注册信息*/
    request.setCharacterEncoding("UTF-8");
    //1、用户名
    String userName = request.getParameter("userName");
    //2、密码
    String pwd1 = request.getParameter("pwd1");
    //3、确认密码
    String pwd2 = request.getParameter("pwd2");

    //表单数据验证
    if (userName == null || userName.equals("")) {
        request.setAttribute("msg", "用户名不能为空！");
        request.getRequestDispatcher("reg.jsp").forward(request, response);
    } else if (pwd1 == null || pwd1.equals("")) {
        request.setAttribute("msg", "密码不能为空！");
        request.getRequestDispatcher("reg.jsp").forward(request, response);
    } else if (!pwd1.equals(pwd2)) {
        request.setAttribute("msg", "两次输入的密码不一致！");
        request.getRequestDispatcher("reg.jsp").forward(request, response);
    } else {
        //数据库插入数据：调用service层的方法
        User user=new User();
        user.setuName(userName);
        user.setuPwd(pwd1);
        UserService userService=new UserServiceImpl();
        int result = userService.register(user);
        if(result>0){
            //注册成功
            out.print("<script>");
            out.print("alert('注册成功，马上登录！');location.href='login.jsp';");
            out.print("</script>");
        }else{
            //注册失败
            request.setAttribute("msg","注册失败，请重新注册！");
            request.getRequestDispatcher("reg.jsp").forward(request,response);
        }
    }


%>
</body>
</html>
