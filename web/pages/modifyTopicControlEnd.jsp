<%@ page import="cn.bdqn.news.pojo.Topic" %>
<%@ page import="cn.bdqn.news.service.topic.TopicService" %>
<%@ page import="cn.bdqn.news.service.topic.TopicServiceImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //获取主题ID和名称
    String id=request.getParameter("id");
    Integer tId=Integer.parseInt(id);
    String name=new String(request.getParameter("topicName").getBytes("ISO-8859-1"),"utf-8");

    //topic对象
    Topic topic=new Topic();
    topic.settId(tId);
    topic.settName(name);

    //调用service层修改主题的方法
    TopicService topicService=new TopicServiceImpl();
    //修改主题
    int result = topicService.modifyTopic(topic);
    if (result==1) {
        out.print("<script>");
        out.print("alert('主题修改成功！');");
        out.print("location.href='publicTopicControl.jsp?opr=query';");
        out.print("</script>");
    }else{
        out.print("<script>");
        out.print("alert('主题修改失败！');");
        out.print("location.href='topics.jsp';");
        out.print("</script>");
    }



%>
