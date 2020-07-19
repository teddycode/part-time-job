<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/2
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%
    String paths = request.getContextPath();
    String basePaths = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + paths + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="icon" href="favicon.ico" type="image/ico">
    <link href="<%=basePaths%>resource/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePaths%>resource/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="<%=basePaths%>resource/css/style.css" rel="stylesheet">
    <link href="<%=basePaths%>resource/js/bootstrap-table/bootstrap-table.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=basePaths%>resource/css/wall.css"/>
    <link rel="stylesheet" href="<%=basePaths%>resource/css/jsmodern.min.css">

</head>

<body data-logobg="color_8" data-sidebarbg="color_8">
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <aside class="lyear-layout-sidebar">

            <!-- logo -->
            <div id="logo" class="sidebar-header">
                <a href="index.html"><img src="images/logo-sidebar.png" title="LightYear" alt="LightYear" /></a>
            </div>
            <div class="lyear-layout-sidebar-scroll">

                <nav class="sidebar-main">
                    <ul class="nav nav-drawer" id="zuo">
                            <li class="nav-item active"> <a href="../href/index.html"><i class="mdi mdi-home"></i> 首页</a> </li>

                            <c:if test="${sessionScope.user.userrole==0}">
                                <li class="nav-item active"> <a href="../href/user.html"><i class="mdi mdi-home"></i> 用户管理</a> </li>
                                <li class="nav-item active"> <a href="../href/jb.html"><i class="mdi mdi-home"></i> 举报管理</a> </li>
                                <li class="nav-item active"> <a href="../href/myy.html"><i class="mdi mdi-home"></i> 异议管理</a> </li>
                                <li class="nav-item active"> <a href="../href/part_time_job.html"><i class="mdi mdi-home"></i> 兼职管理</a> </li>
                                <li class="nav-item active"> <a href="../href/type.html"><i class="mdi mdi-home"></i> 兼职类型管理</a> </li>

                            </c:if>
<c:if test="${sessionScope.user.userrole==1}">
    <li class="nav-item active"> <a href="../href/job.html"><i class="mdi mdi-home"></i> 兼职大全</a> </li>

    <li class="nav-item active"> <a href="../href/myjob.html"><i class="mdi mdi-home"></i> 我的兼职</a> </li>
    <li class="nav-item active"> <a href="../href/part_time_job.html"><i class="mdi mdi-home"></i> 我发布的兼职</a> </li>

    <li class="nav-item active"> <a href="../href/jb.html"><i class="mdi mdi-home"></i> 我的举报</a> </li>
    <li class="nav-item active"> <a href="../href/myy.html"><i class="mdi mdi-home"></i> 我的异议</a> </li>

</c:if>
                    </ul>
                </nav>


            </div>

        </aside>
        <!--End 左侧导航-->

        <!--头部信息-->
        <header class="lyear-layout-header">

            <nav class="navbar navbar-default">
                <div class="topbar">

                    <div class="topbar-left">
                        <div class="lyear-aside-toggler">
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                        </div>
                        <span class="navbar-page-title">  创新创业教育平台 </span>
                    </div>
                    <ul class="topbar-right">
                        <ul class="topbar-right">
                            <li class="dropdown dropdown-profile">
                                <a href="javascript:void(0)" data-toggle="dropdown">
                                    <span><i class="mdi mdi-account-box">${sessionScope.user.username} </i> <span class="caret"></span></span>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-right">
                                    <li> <a href="javascript:void(0)"><i class="mdi mdi-delete"></i> 清空缓存</a></li>
                                    <li class="divider"></li>
                                    <li> <a href="../href/Cancellation.html"><i class="mdi mdi-logout-variant"></i> 退出登录</a> </li>
                                    <li> <a href="javascript:void(0)" data-toggle="modal" data-target=".upduser"><i class="mdi mdi-key-variant"></i> 修改密码</a> </li>
                                    <li> <a href="javascript:void(0)" data-toggle="modal" data-target=".updusers"><i class="mdi mdi-key-variant"></i> 修改个人信息</a> </li>

                                </ul>
                            </li>
                        <!--切换主题配色-->
                        <li class="dropdown dropdown-skin">
                            <span data-toggle="dropdown" class="icon-palette"><i class="mdi mdi-palette"></i></span>
                            <ul class="dropdown-menu dropdown-menu-right" data-stopPropagation="true">
                                <li class="drop-title"><p>主题</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="site_theme" value="default" id="site_theme_1" checked>
                    <label for="site_theme_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="site_theme" value="dark" id="site_theme_2">
                    <label for="site_theme_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="site_theme" value="translucent" id="site_theme_3">
                    <label for="site_theme_3"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>LOGO</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="logo_bg" value="default" id="logo_bg_1" checked>
                    <label for="logo_bg_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_2" id="logo_bg_2">
                    <label for="logo_bg_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_3" id="logo_bg_3">
                    <label for="logo_bg_3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_4" id="logo_bg_4">
                    <label for="logo_bg_4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_5" id="logo_bg_5">
                    <label for="logo_bg_5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_6" id="logo_bg_6">
                    <label for="logo_bg_6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_7" id="logo_bg_7">
                    <label for="logo_bg_7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="logo_bg" value="color_8" id="logo_bg_8">
                    <label for="logo_bg_8"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>头部</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="header_bg" value="default" id="header_bg_1" checked>
                    <label for="header_bg_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_2" id="header_bg_2">
                    <label for="header_bg_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_3" id="header_bg_3">
                    <label for="header_bg_3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_4" id="header_bg_4">
                    <label for="header_bg_4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_5" id="header_bg_5">
                    <label for="header_bg_5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_6" id="header_bg_6">
                    <label for="header_bg_6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_7" id="header_bg_7">
                    <label for="header_bg_7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="header_bg" value="color_8" id="header_bg_8">
                    <label for="header_bg_8"></label>
                  </span>
                                </li>
                                <li class="drop-title"><p>侧边栏</p></li>
                                <li class="drop-skin-li clearfix">
                  <span class="inverse">
                    <input type="radio" name="sidebar_bg" value="default" id="sidebar_bg_1" checked>
                    <label for="sidebar_bg_1"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_2" id="sidebar_bg_2">
                    <label for="sidebar_bg_2"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_3" id="sidebar_bg_3">
                    <label for="sidebar_bg_3"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_4" id="sidebar_bg_4">
                    <label for="sidebar_bg_4"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_5" id="sidebar_bg_5">
                    <label for="sidebar_bg_5"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_6" id="sidebar_bg_6">
                    <label for="sidebar_bg_6"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_7" id="sidebar_bg_7">
                    <label for="sidebar_bg_7"></label>
                  </span>
                                    <span>
                    <input type="radio" name="sidebar_bg" value="color_8" id="sidebar_bg_8">
                    <label for="sidebar_bg_8"></label>
                  </span>
                                </li>
                            </ul>
                        </li>

                    </ul>


                </div>
            </nav>

        </header>
        <!--End 头部信息-->


    </div>
</div>
<input id="userrole" name="userrole" type="hidden" value="${sessionScope.user.userrole}">

    <div class="modal fade updusers" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="">修改个人信息</h4>
                </div>
                <div class="modal-body">

                    <div class="form-group">
                        <div class="form-group has-feedback feedback-left">
                            <select class="form-control example-select" id="sh" name="example-select" >
                                <option value="男">男</option>
                                <option value="女">女</option>

                            </select>
                        </div>
                        <div class="form-group has-feedback feedback-left">
                            <input type="number" placeholder="请输入年龄" value="${sessionScope.user.age}" class="form-control" id="age" name="age" />
                        </div>
                        <div class="form-group has-feedback feedback-left">
                            <input type="text" placeholder="请输入电话" value="${sessionScope.user.phone}" class="form-control " id="phone" name="phone" />
                        </div>
                        <div class="form-group has-feedback feedback-left">
                            <label class="col-xs-12" >请选择你想兼职的类型</label>
                            <select class="form-control type" id="type" name="example-select" >
                            </select>
                        </div>
                        <div class="form-group has-feedback feedback-left">
                            <label class="col-xs-12" >剩余信誉分数</label>
                            <input type="text"  class="form-control example-email-input" disabled value="${sessionScope.user.reputation}" />

                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" onclick="upd()" class="btn btn-primary">点击保存</button>
                    </div>
                </div>
            </div>
        </div>
    </div>


<form id="fr" enctype="multipart/form-data">
    <div class="modal fade upduser" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                    <h4 class="modal-title" id="myLargeModalLabel">修改密码</h4>
                </div>
                <div class="modal-body">

                    <div class="form-group">
                        <div class="form-group has-feedback feedback-left">
                            <input id="userid" name="userid" type="hidden" value="${sessionScope.user.userid}">
                            <input type="password" placeholder="请输入密码" class="form-control" id="password" name="password" />
                            <span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
                        </div>
                        <div class="form-group has-feedback feedback-left">
                            <input type="password" placeholder="请再次输入密码" class="form-control" id="passwords" name="passwords" />
                            <span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" onclick="upduser()" class="btn btn-primary">点击保存</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<input id="typeid" name="typeid" value="${sessionScope.user.typeid}">


<script type="text/javascript" src="<%=basePaths%>resource/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePaths%>resource/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePaths%>resource/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="<%=basePaths%>resource/js/main.js"></script>
<script type="text/javascript" src="<%=basePaths%>resource/js/bootstrap-table/bootstrap-table.js"></script>
<script type="text/javascript" src="<%=basePaths%>resource/js/bootstrap-table/bootstrap-table-zh-CN.js"></script>
<script src="<%=basePaths%>resource/js/bootstrap-notify.min.js"></script>
<script type="text/javascript" src="<%=basePaths%>resource/js/lightyear.js"></script>
<!--图表插件-->
<script type="text/javascript" src="<%=basePaths%>resource/js/Chart.js"></script>
<script type="text/javascript" src="<%=basePaths%>resource/js/barrageWall.js"></script>
<script type="text/javascript">

    $.ajax({
        url:'../type/list.html',
        type:'post',
        dataType: "json",
        success: function (deldata) {
            $.each(deldata.data, function (index, item) {

                $(".type").append("<option value='"+deldata.data[index].tid+"'>"+deldata.data[index].tname+"</option>");
            });
        }


    })

    function upduser() {
        var txtPwd = $("#password").val();
        if ($.trim(txtPwd) != $.trim($("#passwords").val())){
            lightyear.notify("两次密码输入不一致", 'warning', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
            lightyear.loading('hide');
            return;
        }
        if($.trim(txtPwd) == $.trim($("#passwords").val())) {
            $.ajax({
                url: "../user/upd.html",
                dataType: "json",
                type: "post",
                data: {userid: $("#userid").val(), userpwd: $("#password").val()},
                success: function (data) {

                        lightyear.notify(data.msg, 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
                        lightyear.loading('hide');
                        $(".upduser").modal("hide")
                }
            })
        }
    }

    function upd() {
     lightyear.loading('show');  // 显示
         var clx=$("#sh option:selected");
        var type=$("#type option:selected");

         if ($.trim($("#phone").val())!=''){
             let re = /^1\d{10}$/
             if (re.test($("#phone").val())) {
             } else {
                 lightyear.notify('请输入正确的手机号', 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
                 lightyear.loading('hide');

                 return false;
             }
         }
        $.ajax({
            url: "../user/upd.html",
            dataType: "json",
            type: "post",
            data: {userid: $("#userid").val(),sex:clx.val(),age:$("#age").val(),phone:$("#phone").val(),typeid:type.val()},
            success: function (data) {

                lightyear.notify(data.msg+',请重新登录', 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
                lightyear.loading('hide');

                $(".updusers").modal("hide")
            }
        })
    }
</script>
</body>
</html>
