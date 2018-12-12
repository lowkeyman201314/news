package cn.bdqn.news.dao.news;

import cn.bdqn.news.dao.BaseDao;
import cn.bdqn.news.pojo.News;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @Author: bee
 * @Date: 2018/12/12 9:48
 * @Description:
 */
public class NewsDaoImpl extends BaseDao implements NewsDao {
    //定义结果集对象
    ResultSet rs = null;

    @Override
    public List<News> getNewsList() {
        //创建保存新闻集合的对象
        List<News> newsList = new ArrayList<News>();
        //创建新闻对象
        News news = null;
        try {
            //编写SQL语句
            StringBuilder sql = new StringBuilder("SELECT");
            sql.append(" nid,ntid,ntitle,nauthor,ncreateDate,");
            sql.append("npicPath,ncontent,nmodifyDate,");
            sql.append("nsummary FROM news");

            //执行SQL语句
            rs = this.exceuteQuery(sql.toString());
            //处理结果集
            while (rs.next()){
                //实例化新闻对象
                news=new News();

                //给新闻对象各属性赋值
                news.setnAuthor(rs.getString("nauthor"));
                news.setnContent(rs.getString("ncontent"));
                news.setnCreateDate(rs.getDate("ncreateDate"));
                news.setnId(rs.getInt("nid"));
                news.setnTid(rs.getInt("ntid"));
                news.setnTitle(rs.getString("ntitle"));
                news.setnPicPath(rs.getString("npicPath"));
                news.setnModifyDate(rs.getDate("nmodifyDate"));
                news.setnSummary(rs.getString("nsummary"));

                //把每条新闻添加到新闻集合
                newsList.add(news);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        //返回新闻集合
        return newsList;
    }
}
