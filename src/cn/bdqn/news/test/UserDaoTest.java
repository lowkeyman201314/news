package cn.bdqn.news.test;

import cn.bdqn.news.pojo.User;
import cn.bdqn.news.service.user.UserService;
import cn.bdqn.news.service.user.UserServiceImpl;
import org.junit.Test;

/**
 * @Author: bee
 * @Date: 2018/12/8 19:22
 * @Description:
 */
public class UserDaoTest {
    @Test
    public void testUser(){
        UserService userService=new UserServiceImpl();
        User user=userService.login("admin","admin");
        if(user!=null){
            System.out.println(user.getuName()+"\t"+user.getuPwd());
        }
    }
}
