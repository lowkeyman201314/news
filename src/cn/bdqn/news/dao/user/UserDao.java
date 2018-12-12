package cn.bdqn.news.dao.user;

import cn.bdqn.news.pojo.User;

/**
 * @Author: bee
 * @Date: 2018/12/8 18:49
 * @Description:
 */
public interface UserDao {
    //根据用户名和密码查询用户是否存在
    User queryUser(String userName, String pwd);
    //新增用户
    int insertNewUser(User user);
}
