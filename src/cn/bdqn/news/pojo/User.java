package cn.bdqn.news.pojo;

import java.io.Serializable;

/**
 * @Author: bee
 * @Date: 2018/12/8 18:45
 * @Description:
 */
public class User implements Serializable{
    private int uId;
    private String uName;
    private String uPwd;

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuPwd() {
        return uPwd;
    }

    public void setuPwd(String uPwd) {
        this.uPwd = uPwd;
    }
}
