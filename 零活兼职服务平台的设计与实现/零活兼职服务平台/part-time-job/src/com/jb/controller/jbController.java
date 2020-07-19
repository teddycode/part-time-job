package com.jb.controller;

import com.alibaba.fastjson.JSONObject;
import com.jb.entity.jb;
import com.jb.service.jbService;
import com.myy.entity.myy;
import com.myy.service.myyService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("jb")
public class jbController {
    @Resource
    private jbService service;

    /**
     *增加方法
     * @param request
     * @param jb
     * @return
     */
    @RequestMapping("add")
    @ResponseBody
    public JSONObject regist(HttpServletRequest request, jb jb){
        JSONObject jsonObject=new JSONObject();
        if (service.insertSelective(jb)!=0){
            jsonObject.put("msg","成功");
        }else{
            jsonObject.put("data","失败");
        }
        return jsonObject;
    }

    /**
     * 查询
     * @param request
     * @param jb
     * @return
     */
    @RequestMapping("list")
    @ResponseBody
    public JSONObject seluser(HttpServletRequest request,jb jb){
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("data",service.list(jb));
        return jsonObject;
    }
    /**
     * 修改方法
     * @param request
     * @param jb
     * @return
     */
    @RequestMapping("upd")
    @ResponseBody
    public JSONObject upd(HttpServletRequest request,jb jb){

        JSONObject jsonObject=new JSONObject();
        if (service.updateByPrimaryKeySelective(jb)!=0){
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
}
