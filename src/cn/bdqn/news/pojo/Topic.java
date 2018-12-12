package cn.bdqn.news.pojo;

import java.io.Serializable;

/**
 * @Author: bee
 * @Date: 2018/12/12 14:37
 * @Description:
 */
public class Topic implements Serializable {
    private int tId;
    private String tName;

    public int gettId() {
        return tId;
    }

    public void settId(int tId) {
        this.tId = tId;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName;
    }
}
