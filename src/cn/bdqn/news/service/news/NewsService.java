package cn.bdqn.news.service.news;

import cn.bdqn.news.pojo.News;

import java.util.List;

/**
 * @Author: bee
 * @Date: 2018/12/12 10:18
 * @Description:
 */
public interface NewsService {
    //查询所有新闻
    List<News> getNewsList();
}
