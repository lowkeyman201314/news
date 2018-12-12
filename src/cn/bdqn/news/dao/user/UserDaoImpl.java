package cn.bdqn.news.dao.user;

import cn.bdqn.news.dao.BaseDao;
import cn.bdqn.news.pojo.User;

import java.sql.ResultSet;

/**
 * @Author: bee
 * @Date: 2018/12/8 18:53
 * @Description:
 */
public class UserDaoImpl extends BaseDao implements UserDao {
    ResultSet rs = null;

    @Override
    public User queryUser(String userName, String pwd) {
        User user = null;
        try {
            //编写SQL语句
            String sql = "SELECT * from news_users where uname=? and upwd=?";
            //执行SQL语句
            rs = this.exceuteQuery(sql, userName, pwd);
            while (rs.next()) {
                user = new User();
                user.setuId(rs.getInt(1));
                user.setuName(rs.getString(2));
                user.setuPwd(rs.getString(3));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            this.closeAll(null, null, rs);
        }
        return user;
    }

    @Override
    public int insertNewUser(User user) {
        //受影响行数
        int result = 0;
        try {
            //编写SQL语句
            String sql = "insert news_users(uname,upwd) VALUES(?,?)";
            //执行SQL语句
            result=this.exceuteUpdate(sql, user.getuName(), user.getuPwd());
        } catch (Exception e) {
            e.printStackTrace();
            result=-1;
        }
        return result;
    }
}
