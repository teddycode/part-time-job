package com.myy.controller;

import com.alibaba.fastjson.JSONObject;
import com.myy.entity.myy;
import com.myy.service.myyService;
import com.part_time_job.entity.part_time_job;
import com.user.entity.user;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("myy")
public class myyController {
    @Resource
    private myyService service;

    /**
     *增加方法
     * @param request
     * @param myy
     * @return
     */
    @RequestMapping("add")
    @ResponseBody
    public JSONObject regist(HttpServletRequest request, myy myy){
        JSONObject jsonObject=new JSONObject();
        if (service.insertSelective(myy)!=0){
            jsonObject.put("msg","注册成功");
        }else{
            jsonObject.put("data","注册失败");
        }
        return jsonObject;
    }

    /**
     * 查询
     * @param request
     * @param myy
     * @return
     */
    @RequestMapping("list")
    @ResponseBody
    public JSONObject seluser(HttpServletRequest request,myy myy){
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("data",service.list(myy));
        return jsonObject;
    }
    /**
     * 修改方法
     * @param request
     * @param myy
     * @return
     */
    @RequestMapping("upd")
    @ResponseBody
    public JSONObject upd(HttpServletRequest request,myy myy){

        JSONObject jsonObject=new JSONObject();
        if (service.updateByPrimaryKeySelective(myy)!=0){
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
            jsonObject.put("msg","删除成功");
        }else{
            jsonObject.put("msg","删除失败");
        }
        return jsonObject;
    }
}
