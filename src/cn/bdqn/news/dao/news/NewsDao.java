package cn.bdqn.news.dao.news;

import cn.bdqn.news.pojo.News;

import java.util.List;

/**
 * @Author: bee
 * @Date: 2018/12/12 9:46
 * @Description:
 */
public interface NewsDao {
    //查询所有新闻
    List<News> getNewsList();

}
