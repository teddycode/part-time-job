package com.type.controller;

import com.alibaba.fastjson.JSONObject;
import com.myy.entity.myy;
import com.type.entity.type;
import com.type.service.typeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("type")
public class typeController {
    @Resource
    private typeService service;

    /**
     *增加方法
     * @param request
     * @param type
     * @return
     */
    @RequestMapping("add")
    @ResponseBody
    public JSONObject regist(HttpServletRequest request, type type){
        JSONObject jsonObject=new JSONObject();
        if (service.insertSelective(type)!=0){
            jsonObject.put("msg","注册成功");
        }else{
            jsonObject.put("data","注册失败");
        }
        return jsonObject;
    }

    /**
     * 查询
     * @param request
     * @param type
     * @return
     */
    @RequestMapping("list")
    @ResponseBody
    public JSONObject seluser(HttpServletRequest request,type type){
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("data",service.list(type));
        return jsonObject;
    }
    /**
     * 修改方法
     * @param request
     * @param type
     * @return
     */
    @RequestMapping("upd")
    @ResponseBody
    public JSONObject upd(HttpServletRequest request,type type){

        JSONObject jsonObject=new JSONObject();
        if (service.updateByPrimaryKeySelective(type)!=0){
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
