package com.user.controller;

import com.alibaba.fastjson.JSONObject;
import com.myy.entity.myy;
import com.user.entity.user;
import com.user.service.userService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("user")
public class userController {
    @Resource
    private userService service;

    /**
     * 登录方法
     * @param request
     * @param user
     * @return
     */
    @RequestMapping("login")
    @ResponseBody
    public JSONObject login(HttpServletRequest request, user user){
        JSONObject jsonObject=new JSONObject();
        System.out.println("用户名："+user.getUsername()+"密码："+user.getUserpwd());
        user users=service.login(user);
        if (null==users){
            jsonObject.put("data",1);


        }else{
            jsonObject.put("data",0);
            request.getSession().setAttribute("user",users);
        }
        return jsonObject;
    }
    /**
     * 修改方法
     * @param request
     * @param
     * @return
     */
    @RequestMapping("upd")
    @ResponseBody
    public JSONObject upd(HttpServletRequest request, user user){

        JSONObject jsonObject=new JSONObject();
        if (service.updateByPrimaryKeySelective(user)!=0){
            jsonObject.put("msg","成功");
        }else{
            jsonObject.put("msg","失败");
        }
        return jsonObject;
    }
    /**
     * 注册方法
     * @param request
     * @param user
     * @return
     */
    @RequestMapping("regist")
    @ResponseBody
    public JSONObject regist(HttpServletRequest request,user user){
        JSONObject jsonObject=new JSONObject();
        if (service.insertSelective(user)!=0){
            jsonObject.put("data",0                                                                     );

            jsonObject.put("msg","注册成功");
        }else{
            jsonObject.put("data",1);

            jsonObject.put("data","注册失败");
        }
        return jsonObject;
    }

    /**
     * 查询用户
     * @param request
     * @param user
     * @return
     */
    @RequestMapping("list")
    @ResponseBody
    public JSONObject seluser(HttpServletRequest request,user user){
        JSONObject jsonObject=new JSONObject();
        jsonObject.put("data",service.list(user));
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
