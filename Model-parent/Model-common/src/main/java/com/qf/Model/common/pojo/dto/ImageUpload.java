package com.qf.Model.common.pojo.dto;

/**
 * 上传图片返回的实现类
 */
public class ImageUpload {

    //1 状态值   0:成功   1:失败
    private int code;
    //2 返回前台的提示信息
    private String msg;
    //3 图片信息
    private UploadData data;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public UploadData getData() {
        return data;
    }

    public void setData(UploadData data) {
        this.data = data;
    }
}
