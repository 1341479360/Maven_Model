package com.qf.Model.common.pojo.dto;

/**
 * 文件上传的data
 */
public class UploadData {

    //1 图片路径
    private String src ;

    //2 图片名称
    private String  title;

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
