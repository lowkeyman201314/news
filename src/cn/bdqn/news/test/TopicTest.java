package cn.bdqn.news.test;

import cn.bdqn.news.pojo.Topic;
import cn.bdqn.news.service.topic.TopicService;
import cn.bdqn.news.service.topic.TopicServiceImpl;
import org.junit.Test;

/**
 * @Author: bee
 * @Date: 2018/12/12 14:50
 * @Description:
 */
public class TopicTest {
    TopicService topicService=new TopicServiceImpl();
    @Test
    public void test(){
        System.out.println(topicService.topics().size());
    }

    @Test
    public void testQueryTopicByName(){
        System.out.println(topicService.queryTopicByName("军事"));
    }
    @Test
    public void testInsertNewTopic(){
        System.out.println(topicService.addNewTopic("恐怖"));
    }
    @Test
    public void testUpdateTopic(){
        Topic topic=new Topic();
        topic.settId(45);
        topic.settName("测试");
        System.out.println(topicService.modifyTopic(topic));
    }
    @Test
    public void testDelTopic(){
        System.out.println(topicService.delTopic(42));
    }
}
