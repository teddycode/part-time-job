<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/2/9
  Time: 12:35
  科目类型管理

  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="../login/index.jsp" %>
<main class="lyear-layout-content">

    <div class="container-fluid">

        <!-- 内容填写处 -->

        <div class="panel panel-default">

            <div class="panel-heading">

                <h3 class="panel-title text-center">用户管理</h3>

            </div>
            <div class="panel-body">


                <table data-toggle="table" id="listtable" data-height="400"

                       data-classes="table table-hover" data-striped="true"

                       data-pagination="true" data-side-pagination="client"
                       data-search="true" data-show-refresh="true">

                    <thead>

                    <tr>
                    </tr>

                    </thead>

                </table>
            </div>

        </div>



    </div>

</main>

<input type="hidden" id="uid" name="uid">
<div class="modal fade sh" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myLargeModalLabel">审核</h4>
            </div>
            <div class="modal-body">

                <div class="form-group">
                    <div class="form-group has-feedback feedback-left">
                        <select class="form-control example-select" id="sh" name="example-select" >
                            <option value="0">管理</option>
                            <option value="1">普通用户</option>

                        </select>
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >剩余信誉分数</label>
                        <input type="text"  class="form-control example-email-input"  id="reputation" name="reputation" />

                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" onclick="sh()" class="btn btn-primary">点击保存</button>
                </div>
            </div>
        </div>
    </div>
</div>


    <script type="text/javascript" src="<%=basePath%>resource/pro/gl/user.js"></script>

</body>
</html>
