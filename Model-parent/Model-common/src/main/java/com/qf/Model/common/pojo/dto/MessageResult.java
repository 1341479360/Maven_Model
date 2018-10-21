package com.qf.Model.common.pojo.dto;

/**
 * 封装action到前端
 */
public class MessageResult {

    //1 是否发送成功
    private boolean success;
    //2 消息信息
    private String msg;
    //3 封装的返回数据
    private Object data;

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
