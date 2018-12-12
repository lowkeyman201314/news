package cn.bdqn.news.service.user;

import cn.bdqn.news.pojo.User;

/**
 * @Author: bee
 * @Date: 2018/12/10 8:49
 * @Description:
 */
public interface UserService {
    //根据用户名和密码查询用户是否存在
    User login(String userName, String pwd);
    //注册用户
    int register(User user);
}
