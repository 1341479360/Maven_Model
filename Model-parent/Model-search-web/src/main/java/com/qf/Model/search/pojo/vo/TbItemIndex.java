package com.qf.Model.search.pojo.vo;

/**
 * 1    查询数据库将结果集封装到该对象集合中
 * 2    遍历集合,取出该对象并封装到索引库的document文档对象中
 * 注意:与schema.xml中的配置字段名对应,
 *      保证该类可以封装到document文档对象中
 *      schema.xml中不用定义id,默认就具备id
 */
public class TbItemIndex {

    private Long id;

    private String title;

    private String sellPoint;

    private Long price;

    private String image;

    private String catName;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSellPoint() {
        return sellPoint;
    }

    public void setSellPoint(String sellPoint) {
        this.sellPoint = sellPoint;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }
}
