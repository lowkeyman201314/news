package cn.bdqn.news.dao.topic;

import cn.bdqn.news.dao.BaseDao;
import cn.bdqn.news.pojo.Topic;
import com.sun.xml.internal.org.jvnet.staxex.Base64Data;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author: bee
 * @Date: 2018/12/12 14:39
 * @Description:
 */
public class TopicDaoImpl extends BaseDao implements TopicDao {
    //结果集对象
    ResultSet rs = null;

    @Override
    public List<Topic> topics() {
        List<Topic> topicList = new ArrayList<Topic>();
        Topic topic = null;
        try {
            //编写SQL语句
            String sql = "select * from topic order by tid desc";
            //执行SQL语句
            rs = this.exceuteQuery(sql);
            //处理结果集
            while (rs.next()) {
                topic = new Topic();
                //各列赋值
                topic.settId(rs.getInt(1));
                topic.settName(rs.getString(2));
                //对象放入集合
                topicList.add(topic);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return topicList;
    }

    @Override
    public Topic queryTopicByName(String tName) {
        Topic topic = null;
        try {
            //编写SQL语句
            String sql = "select * from topic where tname=?";
            //执行SQL语句
            rs = this.exceuteQuery(sql, tName);
            //处理结果集
            while (rs.next()) {
                topic = new Topic();
                topic.settId(rs.getInt(1));
                topic.settName(rs.getString(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return topic;
    }

    @Override
    public int addNewTopic(String tName) {
        int result = 0;
        try {
            String sql = "INSERT topic(tname) VALUES(?)";
            result = this.exceuteUpdate(sql, tName);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public int modifyTopic(Topic topic) {
        int result = 0;

        try {
            //编写SQL语句
            String sql = "update topic set tname=? where tid=?";
            result = this.exceuteUpdate(sql, topic.gettName(), topic.gettId());
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    @Override
    public int delTopic(int id) {
        int result = 0;
        try {
            //编写SQL语句
            String sql = "delete from topic where tid=?";
            result = this.exceuteUpdate(sql, id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
