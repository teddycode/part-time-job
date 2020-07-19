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

                <h3 class="panel-title text-center">我发布的兼职</h3>

            </div>
            <div class="panel-body">
                <div id="qytoolbar" class="btn-group">
                </div>
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

<div class="modal fade jb" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="myLargeModalLabel">举报</h4>
            </div>
            <div class="modal-body">

                <div class="form-group">

                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请输入举报内容</label>
                        <input type="hidden" id="jid" name="jid">
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

<div class="modal fade add" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" >增加</h4>
            </div>
            <div class="modal-body">

                <div class="form-group">

                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请输入兼职名称</label>
                        <input type="text"  class="form-control example-email-input"  id="pname" name="pname" />
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请输入描述</label>
                        <input type="text"  class="form-control example-email-input"  id="pval" name="pval" />
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请输入最大年龄</label>
                        <input type="number"  class="form-control example-email-input"  id="psage" name="psage" />
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请输入最小年龄</label>
                        <input type="number"  class="form-control example-email-input"  id="peage" name="peage" />
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请输入最低信誉积分</label>
                        <input type="number"  class="form-control example-email-input"  id="preputation" name="preputation" />
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请输入价钱</label>
                        <input type="number"  class="form-control example-email-input"  id="pmoney" name="pmoney" />
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请输入人数</label>
                        <input type="number"  class="form-control example-email-input"  id="pcount" name="pcount" />
                    </div>

                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请选择你想兼职的类型</label>
                        <select class="form-control types" id="typ" name="example-select" >
                        </select>
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请选择性别</label>
                        <select class="form-control example-select" id="sh" name="example-select" >
                            <option value="男女不限">男女不限</option>
                            <option value="男">男</option>
                            <option value="女">女</option>

                        </select>
                    </div>
                </div>

            </select>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" onclick="add()" class="btn btn-primary">点击保存</button>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade upd" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" >修改</h4>
            </div>
            <div class="modal-body">

                <div class="form-group">
<input type="hidden" id="pid" name="pid">
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请输入兼职名称</label>
                        <input type="text"  class="form-control example-email-input"  id="pnames" name="pname" />
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请输入描述</label>
                        <input type="text"  class="form-control example-email-input"  id="pvals" name="pval" />
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请输入最大年龄</label>
                        <input type="number"  class="form-control example-email-input"  id="psages" name="psage" />
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请输入最小年龄</label>
                        <input type="number"  class="form-control example-email-input"  id="peages" name="peage" />
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请输入最低信誉积分</label>
                        <input type="number"  class="form-control example-email-input"  id="preputations" name="preputation" />
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请输入价钱</label>
                        <input type="number"  class="form-control example-email-input"  id="pmoneys" name="pmoney" />
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请输入人数</label>
                        <input type="number"  class="form-control example-email-input"  id="pcounts" name="pcount" />
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请选择性别</label>
                        <select class="form-control example-select" id="shs" name="example-select" >
                            <option value="男女不限">男女不限</option>
                            <option value="男">男</option>
                            <option value="女">女</option>

                        </select>
                    </div>
                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请选择你想兼职的类型</label>
                        <select class="form-control types" id="types" name="example-select" >
                        </select>
                    </div>
                </div>

                </select>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" onclick="up()" class="btn btn-primary">点击保存</button>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade sel" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" >本兼职员工</h4>
            </div>
            <div class="modal-body">

                <div class="form-group">
                    <div class="panel panel-default">

                        <div class="panel-heading">

                            <h3 class="panel-title text-center">兼职大全</h3>

                        </div>
                        <div class="panel-body">

                            <table data-toggle="table" id="sel" data-height="400"

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

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
            </div>
        </div>
    </div>
</div>
<input type="hidden" id="uid" name="uid">

<div class="modal fade pj" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" >评价</h4>
            </div>
            <div class="modal-body">

                <div class="form-group">

                    <div class="form-group has-feedback feedback-left">
                        <label class="col-xs-12" >请输入评价</label>
                        <input type="text"  class="form-control example-email-input"  id="puser" name="puser" />

                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" onclick="pj()" class="btn btn-primary">点击保存</button>
                </div>
            </div>
        </div>
    </div>
</div>

<c:if test="${sessionScope.user.userrole==0}">

    <script type="text/javascript" src="<%=basePath%>resource/pro/gl/part_time_job.js"></script>
</c:if>
<c:if test="${sessionScope.user.userrole==1}">
    <script type="text/javascript" src="<%=basePath%>resource/pro/pt/mypart_time_job.js"></script>

</c:if>
</body>
</html>
