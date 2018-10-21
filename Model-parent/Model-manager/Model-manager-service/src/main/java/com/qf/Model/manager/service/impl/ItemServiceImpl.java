package com.qf.Model.manager.service.impl;

import com.qf.Model.common.core.JsonUtils;
import com.qf.Model.common.core.PropKit;
import com.qf.Model.common.core.StrKit;
import com.qf.Model.common.fdfs.FastDFSFile;
import com.qf.Model.common.fdfs.FastDFSUtils;
import com.qf.Model.common.pojo.dto.ImageUpload;
import com.qf.Model.common.pojo.dto.ItemResult;
import com.qf.Model.common.pojo.dto.PageInfo;
import com.qf.Model.common.pojo.dto.UploadData;
import com.qf.Model.manager.dao.TbItemCustomMapper;
import com.qf.Model.manager.dao.TbItemMapper;
import com.qf.Model.manager.pojo.po.TbItem;
import com.qf.Model.manager.pojo.po.TbItemExample;
import com.qf.Model.manager.pojo.vo.TbItemCustom;
import com.qf.Model.manager.pojo.vo.TbItemQuery;
import com.qf.Model.manager.service.ItemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
public class ItemServiceImpl implements ItemService {

    //1 初始化logger
    private Logger logger = LoggerFactory.getLogger(this.getClass());

    //2 注入dao层接口
    @Autowired
    private TbItemCustomMapper customMapper;

    @Autowired
    private TbItemMapper mapper;


    @Override
    public ItemResult<TbItemCustom> listItemByPage(PageInfo page, TbItemQuery query) {

        //1 创建url异步数据接口实现类
        ItemResult<TbItemCustom> result = new ItemResult<TbItemCustom>();

        //2 发送成功,此值为0
        result.setCode(0);
        //3 发送信息为发送成功
        result.setMsg("success");

        //出现异常时,改变传输的值
        try {

            //封装接口实现类数据:查询总数
            result.setCount(customMapper.itemCount(query));
            //单页的数据集合
            result.setData(customMapper.listItemByPage(page, query));

        } catch (Exception e) {
            //为0状态证明传输失败
            result.setCode(1);
            result.setMsg("defiled");
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return result;
    }


    @Override
    public int removeByIds(List<Long> ids) {

        int i = 0;
        try {
            //封装一个修改更改的商品对象
            TbItem record = new TbItem();
            record.setStatus((byte) 3);

            //1 使用example对象
            TbItemExample example = new TbItemExample();

            //2 创建模板
            TbItemExample.Criteria criteria = example.createCriteria();

            //3 为模板设值
            criteria.andIdIn(ids);

            //4 执行修改操作
            i = mapper.updateByExampleSelective(record, example);

        } catch (Exception e) {

            logger.error(e.getMessage(), e);

            e.printStackTrace();
        }
        return i;
    }


    /**
     * 更改状态值
     *
     * @param tbItem 传递的来的对象
     * @return 影响的条数
     */
    @Override
    public int changeStatus(TbItem tbItem) {

        try {
            return customMapper.changeStatus(tbItem);

        } catch (Exception e) {

            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        return 0;
    }

    /**
     * 文件上传方法
     *
     * @param file 上传的文件对象
     * @return 返回一个图片接口
     */
    @Override
    public String uploadImage(MultipartFile file) {

        String json=null;

        //   返回的接口实现类
        ImageUpload imageUpload = new ImageUpload();
        //   上传的数据信息
        UploadData uploadData = new UploadData();
        try {
            /*
                1   获取文件信息并封装
             */
            //1.1   获取文件大小
                       long fileSize = file.getSize();

            //1.2   获取文件二进制文件
            byte[] fileBytes = file.getBytes();

            //1.3   获取原文件名
            String originalFilename = file.getOriginalFilename();

            //1.4   封装到DFS文件对象中
            FastDFSFile fastDFSFile = new FastDFSFile(fileBytes, originalFilename, fileSize);


            /*
                2 获取FastDfs的路径信息
             */
            //2.1   FastDFS组路径     group1/M00/00/00/fasffafas.jpg
            String filePath = FastDFSUtils.uploadFile(fastDFSFile);

            //2.2 获取服务器根路径 http://101.132.38.253
            String basePath = PropKit.use("fdfs_client.conf").get("fdfs_server");

            //2.3   文件的真实路径
            String imgUrl = basePath + "/" + filePath;

            /*
                 3 判断返回的文件存储路径是否为空
            */
            if (StrKit.isBlank(filePath)) {   //  为空.上传失败
                uploadData.setSrc("");
                imageUpload.setCode(1); //状态值非0,失败
                imageUpload.setMsg("filed");
                imageUpload.setData(uploadData);

            } else {  //非空:上传成功
                uploadData.setSrc(imgUrl);
                imageUpload.setCode(0); //状态值为0,成功
                imageUpload.setMsg("success");
                imageUpload.setData(uploadData);
            }
        } catch (IOException e) {
            logger.error(e.getMessage(), e);
            e.printStackTrace();
        }
        json = JsonUtils.objectToJson(imageUpload);

        return json;
    }
}
