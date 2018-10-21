package com.qf.Model.search.web;
import com.qf.Model.common.core.PropKit;
import com.qf.Model.common.core.StrKit;
import com.qf.Model.search.pojo.dto.TbItemIndexResult;
import com.qf.Model.search.service.SearchIndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SearchIndexAction {

    @Autowired
    private SearchIndexService searchIndexService;

    @RequestMapping("index")
    public String index(){
        return "index";
    }

    /**
     *
     * 检索,并返回查询到的结果集
     * @param keyword   检索关键字
     * @param pageIndex 当前页码值(默认为1)
     * @return        dto(1 查询到的总数  2 总页数  3 从索引库查到的对象集合)
     */
    @RequestMapping("/search")
    public String search(String keyword, @RequestParam(defaultValue = "1")int pageIndex, Model model){

        //1 判断检索关键字是否为空值
        if(StrKit.notBlank(keyword)){

            //2 通过外置文件获取每页显示的条数
           int pageSize=PropKit.use("pageInfo.properties").getInt("search.pagesize");

            //3 查询索引库,封装dto
            TbItemIndexResult result = searchIndexService.SearchIndex(keyword, pageIndex, pageSize);

            //4 将dto放入请求域中
            model.addAttribute("list",result);
        }

        return "index";
    }
}
