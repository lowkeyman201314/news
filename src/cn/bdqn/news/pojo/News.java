package cn.bdqn.news.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * @Author: bee
 * @Date: 2018/12/12 9:38
 * @Description:
 */
public class News implements Serializable {
    private int nId;
    private int nTid;
    private String nTitle;
    private String nAuthor;
    private Date nCreateDate;
    private String nPicPath;
    private String nContent;
    private Date nModifyDate;
    private String nSummary;

    public int getnId() {
        return nId;
    }

    public void setnId(int nId) {
        this.nId = nId;
    }

    public int getnTid() {
        return nTid;
    }

    public void setnTid(int nTid) {
        this.nTid = nTid;
    }

    public String getnTitle() {
        return nTitle;
    }

    public void setnTitle(String nTitle) {
        this.nTitle = nTitle;
    }

    public String getnAuthor() {
        return nAuthor;
    }

    public void setnAuthor(String nAuthor) {
        this.nAuthor = nAuthor;
    }

    public Date getnCreateDate() {
        return nCreateDate;
    }

    public void setnCreateDate(Date nCreateDate) {
        this.nCreateDate = nCreateDate;
    }

    public String getnPicPath() {
        return nPicPath;
    }

    public void setnPicPath(String nPicPath) {
        this.nPicPath = nPicPath;
    }

    public String getnContent() {
        return nContent;
    }

    public void setnContent(String nContent) {
        this.nContent = nContent;
    }

    public Date getnModifyDate() {
        return nModifyDate;
    }

    public void setnModifyDate(Date nModifyDate) {
        this.nModifyDate = nModifyDate;
    }

    public String getnSummary() {
        return nSummary;
    }

    public void setnSummary(String nSummary) {
        this.nSummary = nSummary;
    }
}
