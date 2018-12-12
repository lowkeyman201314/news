package cn.bdqn.news.service.user;

import cn.bdqn.news.dao.user.UserDao;
import cn.bdqn.news.dao.user.UserDaoImpl;
import cn.bdqn.news.pojo.User;

/**
 * @Author: bee
 * @Date: 2018/12/10 8:50
 * @Description:
 */
public class UserServiceImpl implements UserService {
    //引入dao

    private UserDao userDao = new UserDaoImpl();

    @Override
    public User login(String userName, String pwd) {
        return userDao.queryUser(userName, pwd);
    }

    @Override
    public int register(User user) {
        return userDao.insertNewUser(user);
    }
}
