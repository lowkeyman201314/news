<%@ page import="cn.bdqn.news.service.topic.TopicService" %>
<%@ page import="cn.bdqn.news.service.topic.TopicServiceImpl" %>
<%@ page import="cn.bdqn.news.pojo.Topic" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //获取操作标识符
    String opr = request.getParameter("opr");
    //根据操作标识符执行对应的操作
    if ("modify".equals(opr)) {
        //修改
        String id = request.getParameter("id");
        Integer tId = Integer.parseInt(id);
        String topicName = request.getParameter("name");
        //创建topic对象，把从a标签传递过来的数据添加到对象中
        Topic topic = new Topic();
        topic.settId(tId);
        topic.settName(topicName);
        //存储topic对象到request作用域
        request.setAttribute("topic", topic);
        //携带参数转发到编辑主题页面
        request.getRequestDispatcher("modifyTopic.jsp")
                .forward(request, response);
    } else if ("del".equals(opr)) {
        //删除
        String id = request.getParameter("id");
        Integer tId = Integer.parseInt(id);
        String topicName = request.getParameter("name");
        //调用service层删除主题的方法
        TopicService topicService = new TopicServiceImpl();
        int result = topicService.delTopic(tId);
        out.print("<script>");
        //结果验证，页面跳转
        if (result > 0) {
            out.print("alert('主题====== " + topicName + " ======已删除！');");
        } else {
            out.print("alert('主题删除失败！');");
        }
        out.print("location.href='publicTopicControl.jsp?opr=query';");
        out.print("</script>");
    } else if ("add".equals(opr)) {
        request.setCharacterEncoding("utf-8");
        String topicName = new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
        System.out.println(topicName);
        //检查该主题名称是否在数据库中已存在
        TopicService topicService = new TopicServiceImpl();
        out.print("<script>");
        if (topicService.queryTopicByName(topicName) != null) {
            out.print("alert('主题已存在，请输入新主题！')';");
            out.print("location.href='addTopic.jsp';");
            return;
        } else {
            //添加新主题
            topicService.addNewTopic(topicName);
            out.print("alert('新主题添加成功！');");
            out.print("location.href='publicTopicControl.jsp?opr=query';");
        }
        out.print("</script>");
    } else if ("query".equals(opr)) {
        //    调用service层的方法，获取主题列表
        TopicService topicService = new TopicServiceImpl();
        List<Topic> topicList = topicService.topics();
        session.setAttribute("topicList", topicList);
        //    携带数据（主题集合）页面跳转
        response.sendRedirect("/pages/topics.jsp");
    }
%>
