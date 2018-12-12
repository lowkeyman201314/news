package cn.bdqn.news.test;

import cn.bdqn.news.dao.news.NewsDao;
import cn.bdqn.news.dao.news.NewsDaoImpl;
import org.junit.Test;

/**
 * @Author: bee
 * @Date: 2018/12/12 10:15
 * @Description:
 */
public class NewsDaoTest {
    @Test
    public void getNewsList(){
        NewsDao newsDao=new NewsDaoImpl();
        System.out.println(newsDao.getNewsList().size());
    }
}
