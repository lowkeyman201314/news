package cn.bdqn.news.service.topic;

import cn.bdqn.news.dao.topic.TopicDao;
import cn.bdqn.news.dao.topic.TopicDaoImpl;
import cn.bdqn.news.pojo.Topic;

import java.util.List;

/**
 * @Author: bee
 * @Date: 2018/12/12 14:48
 * @Description:
 */
public class TopicServiceImpl implements TopicService {
    private TopicDao topicDao=new TopicDaoImpl();
    @Override
    public List<Topic> topics() {
        return topicDao.topics();
    }

    @Override
    public Topic queryTopicByName(String tName) {
        return topicDao.queryTopicByName(tName);
    }

    @Override
    public int addNewTopic(String tName) {
        return topicDao.addNewTopic(tName);
    }
}
