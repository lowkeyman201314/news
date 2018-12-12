<%@ page import="cn.bdqn.news.service.topic.TopicService" %>
<%@ page import="cn.bdqn.news.service.topic.TopicServiceImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    //获取要添加的主题名称
    String topicName = request.getParameter("topicName");
    //检查该主题名称是否在数据库中已存在
    TopicService topicService = new TopicServiceImpl();
    if(topicService.queryTopicByName(topicName)!=null){
        out.print("<script>");
        out.print("alert('主题已存在，请输入新主题！');location.href='addTopic.jsp';");
        out.print("</script>");
        return;
    }else{
        //添加新主题
        topicService.addNewTopic(topicName);
        out.print("<script>");
        out.print("alert('新主题添加成功！');location.href='/pages/topicsControl.jsp';");
        out.print("</script>");
    }
%>
