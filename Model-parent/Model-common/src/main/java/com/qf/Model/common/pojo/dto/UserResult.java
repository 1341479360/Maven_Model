package com.qf.Model.common.pojo.dto;

import java.io.Serializable;
import java.util.List;

/**
 * 用户结果集的集合,
 * 根据layUi的url的异步数据接口编写该实现类
 * 属性
 * 1   code    状态码
 * 2   msg     解析参数信息
 * 3   count   数据总条数
 * 4   data    查询到的数据集合
 */
public class UserResult<T> implements Serializable {

    private int code;

    private String msg;

    private long count;

    private List<T> data;

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

    public long getCount() {
        return count;
    }

    public void setCount(long count) {
        this.count = count;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }
}
