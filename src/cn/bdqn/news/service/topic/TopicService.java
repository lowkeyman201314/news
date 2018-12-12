package cn.bdqn.news.service.topic;

import cn.bdqn.news.pojo.Topic;

import java.util.List;

/**
 * @Author: bee
 * @Date: 2018/12/12 14:47
 * @Description:
 */
public interface TopicService {
    //查询所有主题
    List<Topic> topics();
    //根据主题名称查询主题是否已经存在
    Topic queryTopicByName(String tName);
    //新增主题
    int addNewTopic(String tName);
}
