<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/4
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String paths = request.getContextPath();
    String basePaths = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + paths + "/";
%>
<html>
<head>
    <title>Title</title>
    <link rel="icon" href="<%=basePaths%>resource/favicon.ico" type="image/ico">


    <meta name="author" content="yinqi">
    <link href="<%=basePaths%>resource/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePaths%>resource/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="<%=basePaths%>resource/css/style.css" rel="stylesheet">
    <style>
        .lyear-wrapper {
            position: relative;
        }
        .lyear-login {
            display: flex !important;
            min-height: 100vh;
            align-items: center !important;
            justify-content: center !important;
        }
        .login-center {
            background: #fff;
            min-width: 38.25rem;
            padding: 2.14286em 3.57143em;
            border-radius: 5px;
            margin: 2.85714em 0;
        }
        .login-header {
            margin-bottom: 1.5rem !important;
        }
        .login-center .has-feedback.feedback-left .form-control {
            padding-left: 38px;
            padding-right: 12px;
        }
        .login-center .has-feedback.feedback-left .form-control-feedback {
            left: 0;
            right: auto;
            width: 38px;
            height: 38px;
            line-height: 38px;
            z-index: 4;
            color: #dcdcdc;
        }
        .login-center .has-feedback.feedback-left.row .form-control-feedback {
            left: 15px;
        }
    </style>
</head>
<body data-logobg="color_8" data-sidebarbg="color_8">

<div class="row lyear-wrapper">
    <div class="lyear-login">
        <div class="login-center">
            <div class="login-header text-center">
                创新创业教育平台
            </div>
            <form action="#!" method="post">
                <div class="form-group has-feedback feedback-left">
                    <input type="text" placeholder="请输入您的用户名" class="form-control" name="username" id="username" />
                    <span class="mdi mdi-account form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group has-feedback feedback-left">
                    <input type="password" placeholder="请输入密码" class="form-control" id="password" name="password" />
                    <span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group has-feedback feedback-left">
                    <input type="password" placeholder="请再次输入密码" class="form-control" id="passwords" name="passwords" />
                    <span class="mdi mdi-lock form-control-feedback" aria-hidden="true"></span>
                </div>
                <div class="form-group">
                    <button class="btn btn-block btn-primary" type="button" onclick="login()">注册</button>
                </div>
            </form>
            <hr>
        </div>
    </div>
</div>
<script type="text/javascript" src="<%=basePaths%>resource/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePaths%>resource/js/bootstrap.min.js"></script>
<script src="<%=basePaths%>resource/js/bootstrap-notify.min.js"></script>
<script type="text/javascript" src="<%=basePaths%>resource/js/lightyear.js"></script>
<script type="text/javascript">;
function login() {

    lightyear.loading('show');  // 显示
    var txtUser = $.trim($("#username").val());
    var txtPwd = $("#password").val();

    if ($.trim(txtUser) == "") {
        lightyear.notify("请输入账号", 'warning', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
        lightyear.loading('hide');
        return;

    }

    if ($.trim(txtPwd) == "") {
        lightyear.notify("请输入密码", 'warning', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
        lightyear.loading('hide');
        return;
    }
    if ($.trim(txtPwd) != $.trim($("#passwords").val())){
        lightyear.notify("两次密码输入不一致", 'warning', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
        lightyear.loading('hide');
        return;
    }
    if($.trim(txtPwd)!="" &&$.trim(txtUser) != ""&&$.trim(txtPwd) == $.trim($("#passwords").val())) {
        $.ajax({
            url: "../user/regist.html",
            dataType: "json",
            type: "post",
            data: {username: $("#username").val(), userpwd: $("#password").val(),userrole:1,reputation:100},
            success: function (data) {
                if (data.data === 0) {
                    lightyear.notify("注册成功", 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
                    lightyear.loading('hide');
                    window.location.href = "../href/login.html";
                }else{
                    lightyear.notify("注册失败", 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
                    lightyear.loading('hide');
                }
            }
        })
    }
}
</script>
</body>
</html>
