<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/4/18
  Time: 23:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html class=" desktop portrait" lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style>
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }
        body {
            margin: 0;
        }
        body {
            font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
            font-size: 14px;
            line-height: 1.4285;
            color: #333;
            background-color: #fff;
        }
        html {
            font-size: 10px;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
        }
        p {
            margin: 0 0 10px;
        }
        h1 {
            margin: .67em 0;
            font-size: 2em;
        }
        .h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
            font-family: inherit;
            font-weight: 500;
            line-height: 1.1;
            color: inherit;
        }
        .h4, .h5, .h6, h4, h5, h6 {
            margin-top: 10px;
            margin-bottom: 10px;
        }
        .h4, h4 {
            font-size: 18px;
        }
        dl {
            margin-top: 0px;
            margin-bottom: 20px;
        }
        dd, dt {
            line-height: 1.4285;
        }
        dt {
            font-weight: 700;
        }
        dd {
            margin-left: 0px;
        }
        ol, ul {
            margin-top: 0px;
            margin-bottom: 10px;
        }
        td, th {
            padding: 0;
        }
        th {
            text-align: left;
        }
        .h1, .h2, .h3, h1, h2, h3 {
            margin-top: 20px;
            margin-bottom: 10px;
        }
        .h2, h2 {
            font-size: 30px;
        }
        input {
            line-height: normal;
        }
        button, input, select, textarea {
            font-family: inherit;
            font-size: inherit;
            line-height: inherit;
        }
        .h1, h1 {
            font-size: 36px;
        }
        html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, textarea, blockquote, th, td, p {
            margin: 0;
            padding: 0;
        }
        body {
            font-size: 14px;
            font-family: "微软雅黑";
            background-color: #f4f4f6;
        }
        html {
            font-family: sans-serif;
            -webkit-text-size-adjust: 100%;
            -ms-text-size-adjust: 100%;
        }
        .top {
            width: 100%;
            background: #f6f6f6;
            height: 34px;
            line-height: 34px;
            border-bottom: 1px solid #ddd;
        }
        .topMid {
            padding: 23px 0;
            background: #fff;
        }
        .nav {
            padding-left: 0px;
            margin-bottom: 0px;
            list-style: none;
        }
        .nav {
            width: 100%;
            background: #2b3b90;
            line-height: 40px;
            overflow: hidden;
        }
        .sort {
            padding: 40px 0 15px;
            background: #fff;
        }
        .container {
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }
        /* @media all and (min-width:768px) */
        .container {
            width: 750px;
        }
        /* @media all and (min-width:992px) */
        .container {
            width: 970px;
        }
        /* @media all and (min-width:1200px) */
        .container {
            width: 1170px;
        }
        .container {
            width: 1180px;
        }
        .clearfix {
            display: inline-block;
        }
        .clearfix {
            display: block;
        }
        .w1180 {
            width: 1180px;
            margin: 0 auto;
        }
        .fade {
            opacity: 0;
            -webkit-transition: opacity .15s linear;
            -o-transition: opacity .15s linear;
            transition: opacity .15s linear;
        }
        .modal {
            position: fixed;
            top: 0px;
            right: 0px;
            bottom: 0px;
            left: 0px;
            z-index: 1050;
            display: none;
            overflow: hidden;
            -webkit-overflow-scrolling: touch;
            outline: 0;
        }
        .modal {
            top: 100px;
        }
        .modal-dialog {
            position: relative;
            width: auto;
            margin: 10px;
        }
        /* @media all and (min-width:768px) */
        .modal-dialog {
            width: 600px;
            margin: 30px auto;
        }
        .modal.fade .modal-dialog {
            -webkit-transition: -webkit-transform .3s ease-out;
            -o-transition: -o-transform .3s ease-out;
            transition: transform .3s ease-out;
            -webkit-transform: translate(0px, -25%);
            -ms-transform: translate(0,-25%);
            -o-transform: translate(0,-25%);
            transform: translate(0px, -25%);
        }
        .modal-content {
            position: relative;
            background-color: #fff;
            -webkit-background-clip: padding-box;
            background-clip: padding-box;
            border: 1px solid #999;
            border: 1px solid rgba(0,0,0,.2);
            border-radius: 6px;
            outline: 0;
            -webkit-box-shadow: 0 3px 9px rgba(0,0,0,.5);
            box-shadow: 0px 3px 9px rgba(0,0,0,0.5);
        }
        /* @media all and (min-width:768px) */
        .modal-content {
            -webkit-box-shadow: 0 5px 15px rgba(0,0,0,.5);
            box-shadow: 0px 5px 15px rgba(0,0,0,0.5);
        }
        .modal-header {
            min-height: 16.43px;
            padding: 15px;
            border-bottom: 1px solid #e5e5e5;
        }
        .modal-body {
            position: relative;
            padding: 15px;
        }
        .modal-body .login {
            margin: 60px auto 100px;
        }
        .modal-body p.tips {
            text-align: center;
            font-size: 24px;
        }
        a {
            background-color: transparent;
        }
        a {
            color: #337ab7;
            text-decoration: none;
        }
        a {
            text-decoration: none;
            color: #333;
        }
        .c007 {
            color: #0078ff;
        }
        .glyphicon {
            position: relative;
            top: 1px;
            display: inline-block;
            font-family: "Glyphicons Halflings";
            font-style: normal;
            font-weight: 400;
            line-height: 1;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
        .mr10 {
            margin-right: 10px;
        }
        a:link, a:focus {
            color: #333;
            text-decoration: none;
        }
        .modal-body .weixin_login {
            border-radius: 2px;
            display: block;
            width: 230px;
            height: 50px;
            line-height: 50px;
            overflow: hidden;
            zoom: 1;
            font-size: 18px;
            color: #fff;
            background: #3ebb2b url(../images/defaultIcon.png) no-repeat 44px -294px;
            text-decoration: none;
            text-indent: 95px;
            color: #fff;
            margin: 20px auto 0;
        }
        .modal-body .qq_register {
            border-radius: 2px;
            display: block;
            width: 230px;
            height: 50px;
            line-height: 50px;
            overflow: hidden;
            zoom: 1;
            font-size: 18px;
            color: #fff;
            background: #00B7D6 url(../images/defaultIcon.png) no-repeat 47px -396px;
            text-decoration: none;
            text-indent: 98px;
            margin: 20px auto 0;
        }
        button, input, optgroup, select, textarea {
            margin: 0;
            font: inherit;
            color: inherit;
        }
        button {
            overflow: visible;
        }
        button, select {
            text-transform: none;
        }
        .ml10 {
            margin-left: 10px;
        }
        button, html input[type=button], input[type=reset], input[type=submit] {
            -webkit-appearance: button;
            cursor: pointer;
        }
        input, button {
            margin: 0;
            vertical-align: middle;
        }
        .close {
            float: right;
            font-size: 21px;
            font-weight: 700;
            line-height: 1;
            color: #000;
            text-shadow: 0px 1px 0px #fff;
            filter: alpha(opacity=20);
            opacity: 0.2;
        }
        button.close {
            -webkit-appearance: none;
            padding: 0;
            cursor: pointer;
            background: 0 0;
            border: 0;
        }
        .modal-header .close {
            margin-top: -2px;
        }
        h1, h2, h3, h4, h5, h6 {
            font-size: 100%;
            font-weight: normal;
        }
        .modal-title {
            margin: 0;
            line-height: 1.4285;
        }
        .footer .footer-top {
            padding: 40px 0;
            margin-top: 20px;
            background: #222222;
            overflow: hidden;
        }
        .footer .code {
            float: left;
            width: 150px;
            margin-right: 10px;
        }
        .footer .footer-nav {
            float: left;
            width: 724px;
            overflow: hidden;
        }
        .footer .footer-tel {
            float: right;
            width: 260px;
            color: #666;
        }
        img {
            border: 0;
        }
        img {
            vertical-align: middle;
        }
        fieldset, img {
            border: 0;
        }
        img {
            vertical-align: middle;
        }
        .footer .footer-nav dl {
            float: left;
            width: 180px;
            height: 150px;
            text-align: center;
            line-height: 30px;
            border-right: 1px solid #353535;
        }
        .footer .footer-nav dt {
            color: #0078ff;
            margin-bottom: 15px;
        }
        .c888 {
            color: #888;
        }
        .fr {
            float: right;
            display: inline;
        }
        .mt10 {
            margin-top: 10px;
        }
        .footer .footer-nav dd {
            color: #666;
        }
        .footer .footer-nav dl a {
            color: #666;
        }
        .footer .code img {
            width: 150px;
            height: 150px;
        }
        .mt20 {
            margin-top: 20px;
        }
        .index-com-con {
            background: #fff;
        }
        .index-com-con {
            background: #fff;
        }
        .index-com-title {
            line-height: 40px;
            height: 40px;
            border-bottom: 1px solid #e5e5e5;
            font-size: 18px;
            font-weight: 600;
        }
        .index-com-title {
            line-height: 40px;
            height: 40px;
            border-bottom: 1px solid #e5e5e5;
            font-size: 18px;
            font-weight: 600;
        }
        .index_con, .index_con_1, .index_con_2 {
            padding: 20px;
            background: #fff;
            overflow: hidden;
        }
        .index_con_2 {
            padding: 20px 10px;
        }
        .index_con_2 > div {
            float: left;
            padding: 3px 2px;
            width: 100px;
            text-align: center;
            margin-right: 15px;
            border: 1px solid #c3c3c3;
            background: #efefef;
            margin-bottom: 8px;
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap;
        }
        .index_con_2 > div > a {
            color: #37538e;
        }
        .index-com-title span {
            float: left;
            padding: 0 20px;
            height: 40px;
            background: #3f54bd;
            color: #fff;
        }
        .index-com-title a {
            line-height: 30px;
            font-weight: normal;
            font-size: 14px;
        }
        .index-com-title a.more {
            float: right;
            color: #999;
            font-size: 14px;
            font-weight: normal;
        }
        .index-com-title a.more {
            float: right;
            color: #999;
            font-size: 14px;
            font-weight: normal;
        }
        .breadNav {
            height: 40px;
            line-height: 40px;
            padding-left: 10px;
            border-bottom: 1px solid #e1e2e3;
            text-overflow: ellipsis;
            white-space: nowrap;
            overflow: hidden;
        }
        .companyCon {
            margin-top: 20px;
            background: #fff;
            padding: 20px;
            overflow: hidden;
        }
        .jz-silder {
            float: right;
            width: 260px;
            margin-top: 20px;
        }
        .companyDetail {
            padding: 20px;
            border: 1px solid #ebebeb;
        }
        .jz-title {
            margin-bottom: 10px;
            font-size: 16px;
            font-weight: 600;
        }
        ol, ul {
            list-style: none;
        }
        .jz-con-silder {
            margin-top: 10px;
        }
        .jz-con-silder li {
            padding: 10px 0;
            border-bottom: 1px dashed #ddd;
        }
        .ellips {
            width: 100%;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
        }
        .mr5 {
            margin-right: 5px;
        }
        .label_2 {
            display: inline-block;
            color: #ff436b;
            border: 1px solid #ff436b;
            border-radius: 3px;
            padding: 2px 5px;
        }
        table {
            border-spacing: 0px;
            border-collapse: collapse;
        }
        table {
            background-color: transparent;
        }
        table {
            border-collapse: collapse;
            border-spacing: 0px;
        }
        .hTable {
            width: 100%;
            line-height: 34px;
            border: 1px solid #ebebeb;
            border-bottom: 0;
        }
        .ser_list_style table {
            margin-top: 15px;
        }
        .ser_list_style table.hTable {
            border: 0;
        }
        .uPage {
            text-align: center;
            margin-top: 20px;
        }
        .uPage a {
            display: inline-block;
            padding: 2px 10px;
            border: 1px solid #ddd;
            margin-right: 8px;
        }
        .companySort {
            margin-top: 15px;
            padding: 10px 0;
            line-height: 30px;
            background: #f9f9f9;
            border-top: 2px solid #0078FF;
            overflow: hidden;
        }
        .hTable td {
            line-height: 24px;
            text-align: center;
            border-bottom: 1px solid #ebebeb;
            padding: 20px 0;
        }
        address, caption, cite, code, dfn, th, var {
            font-style: normal;
            font-weight: normal;
        }
        caption, th {
            text-align: left;
        }
        .hTable th {
            background: #fbfbfb;
            text-align: center;
        }
        .ser_list_style table tr td, .ser_list_style table tr th {
            padding: 15px 0;
        }
        .text-danger {
            color: #a94442;
        }
        .ser_list_style .companyServerItem .fr a {
            margin-right: 15px;
        }
        .dIcon {
            display: inline-block;
            background: url(../images/defaultIcon.png) no-repeat;
            vertical-align: middle;
        }
        .topArrow {
            width: 7px;
            height: 5px;
            margin-left: 5px;
            background-position: 0 0;
        }
        .ser_list h2 a {
            font-size: 24px;
            float: left;
            padding: 0 15px;
            border-right: 1px solid #ddd;
        }
        .ser_list h2.active a {
            color: #0077ff;
            font-size: 24px;
        }
        .breadNav h4 {
            width: 600px;
            color: #666;
            line-height: 40px;
        }
        .sort .sortItem {
            overflow: hidden;
            margin-bottom: 15px;
            border-bottom: 1px dashed #ddd;
            padding-bottom: 15px;
        }
        .sort dt, .sort dd {
            float: left;
            margin-left: 8px;
            padding: 5px 8px;
            margin-bottom: 15px;
            border-radius: 3px;
        }
        .sort .sortItem dt {
            color: #999;
        }
        .sort dd {
            background: #efefef;
        }
        .sort .sortItem dd.active, .sort .sortItem dd:hover {
            background: #ff9900;
            border-radius: 3px;
        }
        .sort .sortItem dd.active a, .sort .sortItem dd:hover a {
            color: #fff;
        }
        .nav ul {
            float: left;
        }
        .nav ul li {
            float: left;
        }
        .nav ul li a {
            float: left;
            display: block;
            padding: 0 30px;
            color: #fff;
            border-right: 1px solid #4053bc;
            text-align: center;
            font-size: 16px;
            color: #fff;
            line-height: 38px;
        }
        .sub-nav {
            float: left;
            margin-left: 50px;
        }
        .tRecommond {
            float: left;
            margin-left: 20px;
            height: 37px;
            margin-top: 6px;
        }
        .sub-nav a {
            float: left;
            display: block;
            margin-top: 10px;
            padding: 8px 20px;
            color: #0077ff;
            border: 1px solid #0077ff;
            border-right: 0;
        }
        .sub-nav a.active {
            background: #0077ff;
            color: #fff;
            border: 1px solid #0077ff;
            border-right: 0;
        }
        .sub-nav a:last-child {
            border-right: 1px solid #0077ff;
        }
        b, strong {
            font-weight: 700;
        }
        .logo {
            float: left;
            width: 189px;
            height: 60px;
            background: url(../images/logo.png) left center no-repeat;
            text-indent: -999px;
        }
        .top .otherNav {
            float: right;
        }
        .top .otherNav > div {
            position: relative;
            float: left;
            display: block;
            padding: 0 10px;
            border-right: 1px solid #e0e0e0;
            cursor: pointer;
        }
        .allNav {
            position: absolute;
            top: 34px;
            left: -1090px;
            width: 1179px;
            z-index: 999;
            display: none;
        }
        .wechat-sort {
            border-top: 0;
            padding: 20px;
        }
        .wechat-sort {
            padding: 5px 30px 10px;
            background-color: #fff;
            border: 1px solid #e1e2e3;
            overflow: hidden;
        }
        .wechat-sort .sort-item {
            margin-top: 10px;
            padding-right: 19px;
            overflow: hidden;
        }
        .wechat-sort-detail div {
            float: left;
        }
        .wechat-sort-detail dt {
            font-weight: 600;
        }
        .wechat-sort-detail .detail > dt {
            float: left;
            padding: 5px 9px 0;
        }
        .wechat-sort-detail dd {
            display: inline-block;
        }
        .wechat-sort-detail dd a {
            padding: 5px 9px 0;
            float: left;
            border-radius: 3px;
            color: #777;
        }
        .top .hideNav {
            position: absolute;
            top: 34px;
            left: -1px;
            min-width: 95px;
            padding: 0 5px;
            background: #fff;
            z-index: 10;
            border: 1px solid #ebebeb;
            border-top: 0;
            display: none;
        }
        .topQQIcon {
            width: 16px;
            height: 16px;
            margin-right: 5px;
            background-position: 0 -5px;
        }
        .topWxIcon {
            width: 16px;
            height: 16px;
            margin-right: 5px;
            background-position: 0 -21px;
        }
        .top h1 {
            display: inline-block;
            line-height: 34px;
        }
    </style>

</head>
<body>
<iframe tabindex="-1" title="" src="https://combo.b.qq.com/da/id.html?q=xw8mwv.5oolvf.k9b43w03&amp;p=blu1me.cerfgm.k9bajj9a&amp;t=2852161507&amp;a=&amp;c=483887546350782&amp;s=1.24g0np.g3pyho.k9bad2b7&amp;src=11&amp;pgv_pvi=&amp;v=0.7.7&amp;ts=https%3A%2F%2Fda.qidian.qq.com%2Fping%2Fid" frameborder="0" style="border: 0px; border-image: none; width: 0px; height: 0px; position: absolute;"></iframe><iframe tabindex="-1" title="" src="javascript:false" frameborder="0" style="border: 0px; border-image: none; width: 0px; height: 0px; position: absolute;"></iframe><style type="text/css">.WPA3-SELECT-PANEL { z-index:2147483647; width:463px; height:292px; margin:0; padding:0; border:1px solid #d4d4d4; background-color:#fff; border-radius:5px; box-shadow:0 0 15px #d4d4d4;}.WPA3-SELECT-PANEL * { position:static; z-index:auto; top:auto; left:auto; right:auto; bottom:auto; width:auto; height:auto; max-height:auto; max-width:auto; min-height:0; min-width:0; margin:0; padding:0; border:0; clear:none; clip:auto; background:transparent; color:#333; cursor:auto; direction:ltr; filter:; float:none; font:normal normal normal 12px "Helvetica Neue", Arial, sans-serif; line-height:16px; letter-spacing:normal; list-style:none; marks:none; overflow:visible; page:auto; quotes:none; -o-set-link-source:none; size:auto; text-align:left; text-decoration:none; text-indent:0; text-overflow:clip; text-shadow:none; text-transform:none; vertical-align:baseline; visibility:visible; white-space:normal; word-spacing:normal; word-wrap:normal; -webkit-box-shadow:none; -moz-box-shadow:none; -ms-box-shadow:none; -o-box-shadow:none; box-shadow:none; -webkit-border-radius:0; -moz-border-radius:0; -ms-border-radius:0; -o-border-radius:0; border-radius:0; -webkit-opacity:1; -moz-opacity:1; -ms-opacity:1; -o-opacity:1; opacity:1; -webkit-outline:0; -moz-outline:0; -ms-outline:0; -o-outline:0; outline:0; -webkit-text-size-adjust:none; font-family:Microsoft YaHei,Simsun;}.WPA3-SELECT-PANEL a { cursor:auto;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-TOP { height:25px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CLOSE { float:right; display:block; width:47px; height:25px; background:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/SelectPanel-sprites.png) no-repeat;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CLOSE:hover { background-position:0 -25px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-MAIN { padding:23px 20px 45px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-GUIDE { margin-bottom:42px; font-family:"Microsoft Yahei"; font-size:16px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-SELECTS { width:246px; height:111px; margin:0 auto;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CHAT { float:right; display:block; width:88px; height:111px; background:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/SelectPanel-sprites.png) no-repeat 0 -80px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-CHAT:hover { background-position:-88px -80px;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-AIO-CHAT { float:left;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-QQ { display:block; width:76px; height:76px; margin:6px; background:url(http://combo.b.qq.com/crm/wpa/release/3.3/wpa/views/SelectPanel-sprites.png) no-repeat -50px 0;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-QQ-ANONY { background-position:-130px 0;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-LABEL { display:block; padding-top:10px; color:#00a2e6; text-align:center;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-BOTTOM { padding:0 20px; text-align:right;}.WPA3-SELECT-PANEL .WPA3-SELECT-PANEL-INSTALL { color:#8e8e8e;}</style>


<div class="top">
    <div class="w1180">
        <div style="float: left">人人兼职网一个诚信靠谱的网络兼职招聘信息发布平台</div>
        <div class="otherNav">
            <link href="../resource/css/bootstrap.min.css" rel="stylesheet">

            <div data-toggle="modal" data-target=".login" id="logins" class="u-login"  >
                登录<i class="dIcon topArrow"></i>
            </div>
                <div data-toggle="modal" data-target=".regist" id="regists" class="u-login"  >

                    注册<i class="dIcon topArrow"></i>
                </div>

            <div id="gr" class="u-login" id="user_is_login">
                <a href="../href/myuser.html">个人中心</a>
            </div>

            <div id="grs" id="user_is_login001">
                <a onclick="logingout()">退出</a>
            </div>
            </div>


        </div>
    </div>
</div>



<input name="userid" id="userid" value="${sessionScope.user.userid}" type="hidden">

<div class="nav">
    <div class="w1180">
        <ul id="dh">
            <li><a style="font-size:15px;" href="../part_time_job/listjz.html?pid=6666">首页</a></li>
        </ul>
    </div>
</div>

<!-- 头部区域end -->

<div class="sort">
    <div class="container" style="position: relative;">
        <dl>
            <div class="sortItem big-sort" id="zwdq">
                <dt>兼职职位：</dt>
                <dd>
                    <a href="../part_time_job/listjz.html?pid=3306">全部</a>
                </dd>

            </div>


        </dl>

    </div>
</div>
<!--兼职列表-->
<div class="container" style="text-align:center;">

    <div class="companyCon ser_list ser_list_style" style="float: left;width: 870px">
        <div class="clearfix"></div>
        <table class="hTable" border="0" cellspacing="0" cellpadding="0">
            <tbody id="tbody">
            <tr class="companySort">
                <th style="text-align: left;">招聘标题</th>
                <th>薪资</th>
                <th>兼职年龄</th>
                <th>兼职性别</th>
                <th>最低信誉分数</th>
                <th>兼职类型</th>
            </tr>

            <c:forEach items="${page.emp}" var="h">
                <tr>
                    <td width="250" style="text-align: left;">
                        <a href="../part_time_job/sel.html?id=${h.pid}">${h.pname}</a>
                    </td>
                    <td><span class="text-danger">${h.pmoney}</span>元/天 </td>

                    <td>${h.peage}-${h.psage}</td>
                    <td>${h.psex}</td>
                    <td>${h.puserreputation}</td>
                    <td>${h.type.tname}</td>

                </tr>


            </c:forEach>

            </tbody></table>
        <div class="uPage">
            ${page.pageIndex}/${page.totalPage} 页
                <a onclick="page(12135,1);" href="javascript:void(0);">首页&gt;
                </a>  <a onclick="page(12136,${page.pageIndex})" href="javascript:void(0);">上一页&gt;</a>
                <a onclick="page(${page.totalPage},${page.pageIndex})" href="javascript:void(0);">下一页&gt;</a>
                <a onclick="page(12135,${page.totalPage})" href="javascript:void(0);">最后一页</a>

        </div>
    </div>
</div>


<!-- 提示登录弹出窗  begin-->

<div class="modal fade login" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myLargeModalLabel">登录</h4>
            </div>
            <div class="modal-body">

                <div class="form-group">

                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >用户名</label>
                        <input type="text"  class="form-control example-email-input"  id="username" name="username" />

                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >密码</label>
                        <input type="password"  class="form-control example-email-input"  id="userpwd" name="userpwd" />

                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" onclick="login()" class="btn btn-primary">立即登录</button>
                </div>
            </div>
        </div>
    </div>
</div>


<!--注册-->
<form id="regist">
<div class="modal fade regist" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="regist">注册</h4>
            </div>
            <div class="modal-body">

                <div class="form-group">
                    <input type="hidden" id="userrole" name="userrole" value="0">
                    <input type="hidden" id="reputation" name="reputation" value="100">

                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >用户名</label>
                        <input type="text"  class="form-control example-email-input"  id="usernames" name="username" />
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >密码</label>
                        <input type="password"  class="form-control example-email-input"  id="userpwds" name="userpwd" />
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <select class="form-control example-select" id="sex" name="sex" >
                            <option value="男">男</option>
                            <option value="女">女</option>
                        </select>
                    </div>

                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请选择你想兼职的类型</label>
                        <select class="form-control type" id="typeid" name="typeid" >
                        </select>
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >年龄</label>
                        <input type="text"  class="form-control example-email-input"  id="age" name="age" />
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >电话</label>
                        <input type="text"  class="form-control example-email-input"  id="phone" name="phone" />
                    </div>

                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" onclick="regist()" class="btn btn-primary">立即登录</button>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
<script type="text/javascript" src="../resource/js/jquery.min.js"></script>
<script type="text/javascript" src="../resource/js/bootstrap.min.js"></script>

<iframe width="1227" height="595" id="_QIDIAN_WEB_IM_IFRAME_2852161507" src="https://webpage.qidian.qq.com/2/chat/pc/index.html" frameborder="0" scrolling="no" style="border-radius: 6px 6px 0px 0px; border: 1px solid rgb(218, 222, 231); border-image: none; width: 300px; height: 50px; right: 10px; bottom: 0px; display: none; position: fixed; z-index: 2000000010; box-shadow: 0px 1px 15px rgba(0,0,0,0.15);" allowtransparency="true" data-isopen="0"></iframe><iframe width="0" height="0" id="_QD_STATUS_MANAGE_SOCKET_IFRAME" src="https://webpage.qidian.qq.com/2/chat/statusManager/index.html" frameborder="0" scrolling="no" style="width: 0px; height: 0px; right: 0px; bottom: 0px; position: fixed;" allowtransparency="true"></iframe></body>

<script>
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
    if ($.trim($("#userid").val())!=''){

        $.ajax({
            url:"../user/list.html",
            dataType:"json",
            data:{userid:$("#userid").val()},
            type:"get",
            success:function (dataSource) {
                console.log(dataSource.data)
                document.getElementById("dh").innerHTML+=' <li><a style="padding: 0 5px;font-size:15px;" href="../part_time_job/listjz.html?pid=6666&ptype='+dataSource.data[0].typeid+'">推荐兼职</a>\n'

            }
        })
        document.getElementById("logins").style='display:none';
        document.getElementById("regists").style='display:none';

    }
    if ($.trim($("#userid").val())=='') {
        document.getElementById("gr").style='display:none';
        document.getElementById("grs").style='display:none';

    }
        $.ajax({
            url:"../type/list.html",
            type:"get",
            dataType:"json",
            success:function (data) {
                $.each(data.data,function (index,item) {
                    document.getElementById("zwdq").innerHTML+="    <dd>\n" +
                        "                    <a href=\"../part_time_job/listjz.html?ptype="+item.tid+"\">"+item.tname+"</a>\n" +
                        "                </dd>"
                })
            }
        })


    function logingout() {
        $.ajax({
            url:"../href/Cancellation1.html",
            type:"get",
            dataType:"json",
            success:function (data) {
                window.location.reload()

            }
        })
    }

    
    function login() {


            $.ajax({
                url:"../user/login.html",
                dataType:"json",
                tyoe:"post",
                data:{username:$("#username").val(),userpwd:$("#userpwd").val()},
                success:function(data){
                    if (data.data === 0) {
                        alert("登录成功")
                        window.location.reload()

                    }else
                    {
                    alert("登录失败")
                    }
                }
            })
    }

    function regist() {
        $.ajax({
            url:"../user/list.html",
            dataType:"json",
            tyoe:"post",
            data:{username:$("#usernames").val()},
            success:function(data){
                console.log(data.data)
                if (data.data.length!=0){
                    alert("用户名已被注册")
                    return false;
                }else{
                    $.ajax({
                        url:"../user/regist.html",
                        dataType:"json",
                        tyoe:"post",
                        data:$("#regist").serialize(),
                        success:function(data){
                            alert(data.msg)
                            $(".regist").modal('hide')
                        }
                    })

                }


            }
        })

    }

        function page(stau,index) {

            if(stau==12135){
                window.location.href="../part_time_job/listjz.html?currentPage="+index;
            }

            else if (stau==12136){
                index=index-1;
                if (index>0){

                    window.location.href="../part_time_job/listjz.html?currentPage="+index;

                }else{
                    alert("这已经是首页了")


                }
            }
            else{
                index=index+1;
                if (index<=stau){

                    window.location.href="../part_time_job/listjz.html?currentPage="+index;

                }else {
                    alert("这已经是最后一页了")
                }
            }
        }
</script>

</html>
