package com.qf.Model.common.pojo.dto;

public class UserPageInfo extends PageInfo {

    private long userCount;

    private Integer pageCount;


    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }

    //求出总页数
    public Integer getPageCount() {

        return (int) userCount/getLimit();
    }

    public long getUserCount() {
        return userCount;
    }

    public void setUserCount(long userCount) {
        this.userCount = userCount;
    }
}
