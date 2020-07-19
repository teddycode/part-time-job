package com.part_time_job.controller;

import com.alibaba.fastjson.JSONObject;
import com.part_time_job.entity.part_time_job;
import com.part_time_job.service.part_time_jobService;
import com.type.service.typeService;
import com.user.entity.user;
import com.util.PageBean;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("part_time_job")
public class part_time_jobController {
    @Resource
    private part_time_jobService service;
    @Resource
    private typeService typeService;

    /**
     *增加方法
     * @param request
     * @param part_time_job
     * @return
     */
    @RequestMapping("add")
    @ResponseBody
    public JSONObject regist(HttpServletRequest request, part_time_job part_time_job){
        JSONObject jsonObject=new JSONObject();
        if (service.insertSelective(part_time_job)!=0){
            jsonObject.put("msg","成功");
        }else{
            jsonObject.put("data","失败");
        }
        return jsonObject;
    }

    /**
     * 查询
     * @param request
     * @param part_time_job
     * @return
     */
    @RequestMapping("list")
    @ResponseBody
    public JSONObject seluser(HttpServletRequest request,part_time_job part_time_job){
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("data",service.list(part_time_job));
        return jsonObject;
    }
    /**
     * 修改方法
     * @param request
     * @param part_time_job
     * @return
     */
    @RequestMapping("upd")
    @ResponseBody
    public JSONObject upd(HttpServletRequest request,part_time_job part_time_job){

        JSONObject jsonObject=new JSONObject();
        if (service.updateByPrimaryKeySelective(part_time_job)!=0){
            jsonObject.put("msg","成功");
        }else{
            jsonObject.put("msg","失败");
        }
        return jsonObject;
    }


    /**
     * 删除方法
     * @param request
     * @param id
     * @return
     */
    @RequestMapping("del")
    @ResponseBody
    public JSONObject deluser(HttpServletRequest request,Integer id){

        JSONObject jsonObject=new JSONObject();
        if (service.deleteByPrimaryKey(id)!=0){
            jsonObject.put("msg","成功");
        }else{
            jsonObject.put("msg","失败");
        }
        return jsonObject;
    }


    /**
     * 分页查询方法
     */

    /**
     * 查询所有的课程
     */
    @RequestMapping("listjz")
    public String listjz(HttpServletRequest request, part_time_job record,@Param("currentPage")Integer currentPage){
        List<part_time_job> list=new ArrayList<part_time_job>();
        PageBean page = new PageBean();

        record.setPstau(0);
        //判断查询方式
        if (null!=record.getPid()){
            //如果id不是空置代表是第一次进入查询
            record.setPid(null);
            request.getSession().removeAttribute("typeid");
        }else{
            //如果为空的话代表页面内分页或条件查询
            if (null!=record.getPtype()){
                //如果查询类型不为空的话将值存入session，为条件分页查询做准备
                request.getSession().setAttribute("typeid",record.getPtype());
            }
            record.setPtype((Integer)request.getSession().getAttribute("typeid"));

        }

        if (currentPage != null) {
            page.setPageIndex(currentPage);
        }

        page.setTotalCount(service.count(record));

        JSONObject jsonObject=new JSONObject();


        jsonObject.put("part_time_job",record);
        jsonObject.put("pageindex",(page.getPageIndex()-1)*page.getPageCount());
        jsonObject.put("rows",page.getPageCount());



        for (part_time_job part:service.sellist(jsonObject)
        ) {
            part.setType(typeService.selectByPrimaryKey(part.getPtype()));
            list.add(part);
        }
        page.setEmp(list);
        request.setAttribute("page", page);
        request.setAttribute("data",list);
        return "qt/index";

    }

    /**
     * 兼职信息界面
     */

    @RequestMapping("sel")
    public String sel(HttpServletRequest request,Integer id){
        part_time_job part_time_job=service.selectByPrimaryKey(id);
        part_time_job.setType(typeService.selectByPrimaryKey(part_time_job.getPtype()));
        request.setAttribute("data",part_time_job);
        return "qt/sel";

    }
}
