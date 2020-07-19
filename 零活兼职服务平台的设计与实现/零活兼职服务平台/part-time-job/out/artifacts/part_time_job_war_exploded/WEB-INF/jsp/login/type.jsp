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

                <h3 class="panel-title text-center">兼职类型管理</h3>

            </div>
            <div class="panel-body">

                <div id="qytoolbar" class="btn-group">
                    <button data-toggle="modal" data-target=".addtype" class="btn btn-primary btn-sm" >增加</button>
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


<div class="modal fade addtype" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="">增加</h4>
            </div>
            <div class="modal-body">

                <div class="form-group">

                    <div class="form-group has-feedback feedback-left">
                        <input type="text" placeholder="请输入兼职类型"  class="form-control " id="tname" name="tname" />
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" onclick="add()" class="btn btn-primary">点击保存</button>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade updtype" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                <h4 class="modal-title" id="upd">修改</h4>
            </div>
            <div class="modal-body">

                <div class="form-group">

                    <div class="form-group has-feedback feedback-left">
                        <input type="text" placeholder="请输入兼职类型"  class="form-control " id="tnames" name="tname" />
                    </div>
        <input type="hidden" id="tid" name="tid">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" onclick="upds()" class="btn btn-primary">点击保存</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    window.onload = function(){
        $('#listtable').bootstrapTable({
            method : 'post',  //服务器数据的请求方式 'get' or 'post'
            contentType : "application/json",  //发送到服务器的数据编码类型
            url : '../type/list.html',  //服务器数据的加载地址
            dataType : 'json',  //服务器返回的数据类型
            cache : false, //设置禁用  AJAX 数据缓存
            pagination : true,   //设置为 true 会在表格底部显示分页条
            paginationLoop : false,  //设置分页条禁用循环的功能。
            sidePagination : "client",  //分页方式：client客户端分页，server服务端分页（*）
            striped : true,  //设置隔行变色效果
            clickToSelect : true,  //在点击行时，自动选择rediobox 和 checkbox

            queryParamsType : '',  //若设置为 'limit' 则会发送符合 RESTFul 格式的参数
            minimumCountColumns : 2,  //当列数小于此值时，将隐藏内容列下拉框。
            paginationPreText : '上一页',
            paginationNextText : '下一页',
            pageNumber : 1,  //初始化加载第一页，默认第一页
            pageSize : 5,  //每页的记录行数（*）
            pageList : [5,10,15],  //可供选择的每页的行数（*）

            toolbarAlign : 'right',  //指定 toolbar 水平方向的位置。'left' or 'right'
            uniqueId : "rid",  //每一行的唯一标识，一般为主键列
            dataField:"data",  //加载服务器数据之前的处理程序，可以用来格式化数据。  参数：res为从服务器请求到的数据。
            /*
             * 监听事件：行全选/多选/取消多选时需要改变样式——选中多行时不可编辑，只可删除
             */
            onCheckAll: function (rows) {
                $("#btn-edit").attr("disabled","disabled");
            },
            onUncheckAll: function (rows) {
                $("#btn-edit").removeAttr("disabled");
            },
            onCheck: function (row) {
                rows.push(row);
                if (rows.length > 1) {
                    $("#btn-edit").attr("disabled","disabled");
                } else {
                    $("#btn-edit").removeAttr("disabled");
                }
            },
            onUncheck: function (row) {
                removeByValue(rows,row);
                if (rows.length > 1) {
                    $("#btn-edit").attr("disabled","disabled");
                } else {
                    $("#btn-edit").removeAttr("disabled");
                }
            },
            columns: [
                {
                    selectItemName :'btSelectItem',
                    checkbox:true,
                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'tid',
                    title : '序号',

                    align : 'center',
                    valign : 'middle'
                },{
                    field : 'tname',
                    title : '兼职类型',
                    align : 'center',
                    valign : 'middle',
                },{
                    field : 'tid',
                    title : '操作',
                    align : 'center',
                    valign : 'middle',
                    formatter:function(value,row,index){
                        var D='';
                        D = '<button class="btn btn-primary btn-sm" onclick="del(\'' + row.tid + '\')">删除</button> ';
                        var C= '<button class="btn btn-primary btn-sm" onclick="upd(\'' + row.tid + '\')">修改</button> ';

                        return D+C;
                    }
                }
                ]
        });
    }
    function refresh() {

        $("#listtable").bootstrapTable('refreshOptions',{url:'../type/list.html'});

    }
    function del(id) {
        lightyear.loading('show');  // 显示
        var r=confirm("确定删除嘛？");
        if(r){
            $.ajax(
                {
                    url:'../type/del.html',
                    type:'post',
                    data: {tid: id,

                    },
                    dataType: "json",
                    success: function (data) {
                        lightyear.notify(data.msg, 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
                        refresh()

                    }

                }

            )
        }
        lightyear.loading('hide');

    }
    function add() {
        $.ajax({
                url:'../type/add.html',
                type:'post',
                data: {tname: $("#tname").val(),
                },
                dataType: "json",
                success: function (data) {
                    lightyear.notify(data.msg, 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
                    lightyear.loading('hide');
                    refresh()
    $(".addtype").modal('hide')
                }

            })
    }
    function upd(id) {
        $.ajax({
            url:'../type/list.html',
            type:'post',
            data: {tid: id
            },
            dataType: "json",
            success: function (data) {
               $("#tnames").val(data.data[0].tname)
$("#tid").val(id);

            }

        })
        $(".updtype").modal()
    }
function upds() {
    $.ajax({
        url:'../type/upd.html',
        type:'post',
        data: {tname: $("#tnames").val(),tid:$("#tid").val()
        },
        dataType: "json",
        success: function (data) {
            lightyear.notify(data.msg, 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
            lightyear.loading('hide');
            refresh()
            $(".updtype").modal('hide')
        }

    })

}
</script>

</body>
</html>
