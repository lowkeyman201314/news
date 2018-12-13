<%@ page import="cn.bdqn.news.pojo.Topic" %>
<%@ page import="java.util.List" %>
<%@ page import="cn.bdqn.news.service.topic.TopicService" %>
<%@ page import="cn.bdqn.news.service.topic.TopicServiceImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //  获取主题的id:modifyTopicControl.jsp?id=xxx
    // 查询字符串?后边的单词==表单name属性的值
    String id = request.getParameter("id");
    //  表单或超链接传输的数据，默认都是String类型，
    //  需要转换为int/Integer类型，
    //  才能和数据库int类型的字段进行交互
    Integer tId = Integer.parseInt(id);
    String topicName=request.getParameter("name");
    //创建topic对象，把从a标签传递过来的数据添加到对象中
    Topic topic=new Topic();
    topic.settId(tId);
    topic.settName(topicName);
    //存储topic对象到request作用域
    request.setAttribute("topic",topic);
    //携带参数转发到编辑主题页面
    request.getRequestDispatcher("modifyTopic.jsp")
            .forward(request,response);

%>
