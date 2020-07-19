package com.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("href")
public class hrefController {
    /**
     * 登录页面
     * @return
     */
    @RequestMapping("login")
    public String gologin(){
        return "login/login";
    }
    /**
     * 注册页面
     * @return
     */
    @RequestMapping("regist")
    public String goregist(){
        return "login/regist";
    }
    /**
     * 主页面
     * @return
     */
    @RequestMapping("index")
    public String goidex(){
        return "login/index";
    }

    /**
     * 注销返回登录页面
     * @return
     */
    @RequestMapping("Cancellation")
    public String Cancellation(HttpServletRequest request){
        request.getSession().removeAttribute("user");
        return "login/login";
    }
    /**
     * 注销返回登录页面
     * @return
     */
    @RequestMapping("Cancellation1")
    @ResponseBody
    public String Cancellation1(HttpServletRequest request){
        request.getSession().removeAttribute("user");
        return "login/login";
    }
    /**
     * 主页面
     * @return
     */
    @RequestMapping("user")
    public String user(){
        return "login/user";
    }
    @RequestMapping("jb")
    public String jb(){
        return "login/jb";
    }
    @RequestMapping("myy")
    public String myy(){
        return "login/myy";
    }
    @RequestMapping("part_time_job")
    public String part_time_job(){
        return "login/part_time_job";
    }

    @RequestMapping("myjob")
    public String myjob(){
        return "login/myjob";
    }


    //兼职大全
    @RequestMapping("job")
    public String job(){
        return "login/job";
    }

    //兼职类型管理
    @RequestMapping("type")
    public String type(){
        return "login/type";
    }


    //前端页面
    @RequestMapping("qtindex")
    public String qtindex(){
        return "qt/index";
    }

    //个人中心
    @RequestMapping("myuser")
    public String myuser(){
        return "qt/my/user";
    }

    //我的兼职
    @RequestMapping("myjobs")
    public String myjobs(){return "qt/my/myjobs";}

    //我发布的兼职
    @RequestMapping("myfbjobs")
    public String myfbjobs(){return "qt/my/myfbjobs";}
    //我的异议
    @RequestMapping("myyy")
    public String myyy(){return "qt/my/myyy";}
    //我的举报
    @RequestMapping("myjb")
    public String myjb(){return "qt/my/myjb";}
}