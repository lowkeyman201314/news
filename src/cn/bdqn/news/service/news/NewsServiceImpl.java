package cn.bdqn.news.service.news;

import cn.bdqn.news.dao.news.NewsDao;
import cn.bdqn.news.dao.news.NewsDaoImpl;
import cn.bdqn.news.pojo.News;

import java.util.List;

/**
 * @Author: bee
 * @Date: 2018/12/12 10:19
 * @Description:
 */
public class NewsServiceImpl implements NewsService {
    //引入NewsDao对象
    private NewsDao newsDao=new NewsDaoImpl();

    @Override
    public List<News> getNewsList() {
        return newsDao.getNewsList();
    }
}
