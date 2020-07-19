package com.myjob.controller;

import com.alibaba.fastjson.JSONObject;
import com.myjob.entity.myjob;
import com.myjob.service.myjobService;
import com.myy.entity.myy;
import com.user.entity.user;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("myjob")
public class myjobController {
    @Resource
    private myjobService service;
    /**
     * 增加方法
     * @param request
     * @param myjob
     * @return
     */
    @RequestMapping("add")
    @ResponseBody
    public JSONObject regist(HttpServletRequest request, myjob myjob){
        JSONObject jsonObject=new JSONObject();
        if (service.insertSelective(myjob)!=0){
            jsonObject.put("msg","成功");
        }else{
            jsonObject.put("data","失败");
        }
        return jsonObject;
    }

    /**
     * 查询用户
     * @param request
     * @param myjob
     * @return
     */
    @RequestMapping("list")
    @ResponseBody
    public JSONObject seluser(HttpServletRequest request,myjob myjob){
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("data",service.list(myjob));
        return jsonObject;
    }
    /**
     * 修改方法
     * @param request
     * @param myjob
     * @return
     */
    @RequestMapping("upd")
    @ResponseBody
    public JSONObject upd(HttpServletRequest request, myjob myjob){

        JSONObject jsonObject=new JSONObject();
        if (service.updateByPrimaryKeySelective(myjob)!=0){
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
