window.onload = function(){
    $('#listtable').bootstrapTable({
        method : 'post',  //服务器数据的请求方式 'get' or 'post'
        contentType : "application/json",  //发送到服务器的数据编码类型
        url : '../project/list.html?pfuserid='+$("#userid").val(),  //服务器数据的加载地址
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
                field : 'pid',
                title : '序号',

                align : 'center',
                valign : 'middle'
            },{
                field : 'pname',
                title : '项目名称',
                align : 'center',
                valign : 'middle'
            },{
                field : 'pstau',
                title : '审核状态',
                align : 'center',
                valign : 'middle'
            },{
                field : 'pval',
                title : '项目审核意见',
                align : 'center',
                valign : 'middle'
            },{
                field : 'pm',
                title : '申请项目资金',
                align : 'center',
                valign : 'middle'
            },{
                field : 'pfuserid',
                title : '项目发布人',
                align : 'center',
                valign : 'middle',
                formatter: function (value, row, index) {
                        var user
                        $.ajax({
                            url: "../user/list.html",
                            dataType: "json",
                            type: "get",
                            data: {userid: row.pfuserid},
                            async: false,
                            success: function (data) {
                                user = data.data[0].username
                            }
                        })
                        return user
                }

            },{
                field : 'psuserid',
                title : '项目审核人',
                align : 'center',
                valign : 'middle',
                formatter: function (value, row, index) {
                    if ($.trim(row.psuserid)==='') {
                        console.log(row.psuserid)

                        return ''

                    }else{
                        var user
                        $.ajax({
                            url:"../user/list.html",
                            dataType:"json",
                            type:"get",
                            data:{userid:value},
                            async: false,
                            success:function (data) {
                                user=data.data[0].username
                            }
                        })
                        return user
                    }
                }

            },{
                field : 'pid',
                title : '操作',
                align : 'center',
                valign : 'middle',
                formatter:function(value,row,index){
                    var C = '<button class="btn btn-primary btn-sm" onclick="del(\'' + row.pid +'\')">删除</button> ';
                    var D = '<button class="btn btn-primary btn-sm" onclick="upd(\'' + row.pid +'\')">修改</button> ';
                   var E='';
                   if ($.trim(row.pstau)==='审核通过') {

                       var E = '<button class="btn btn-primary btn-sm" onclick="share(\'' + row.pid + '\')">分享</button> ';
                   }
                    return C+D+E;
                }
            }]
    });
}
function adds() {
    $("#pid").val('');
    $(".bs-example-modal-lg-upload").modal();
}
function refresh() {

    $("#listtable").bootstrapTable('refreshOptions',{url:'../project/list.html'});

}

function upd(id) {
    $("#pid").val(id);
    $(".bs-example-modal-lg-upload").modal();
    $.ajax({
        url:'../project/list.html',
        type:'post',
        data: {pid: id,

        },
        dataType: "json",
        success: function (data) {
            $("#pname").val(data.data[0].pname);
            $("#pm").val(data.data[0].pm);

        }
    })
}
function upload() {
    lightyear.loading('show');  // 显示
    var formData = new FormData($( "#frms" )[0]);
if ($.trim($("#pid").val())=='') {
    $.ajax({
        url: "../project/add.html",
        data: formData,
        async: false,
        cache: false,
        contentType: false,    //不设置Content-Type请求头
        processData: false,    // 不处理发送的数据W
        type: "post",
        dataType: "json",
        success: function (datal) {
            console.log(datal)
            lightyear.notify(datal.msg, 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
            lightyear.loading('hide');
            $(".bs-example-modal-lg-upload").modal('hide')
            refresh();
        }
    })
}else{
    $.ajax({
        url: "../project/upd.html",
        data: formData,
        async: false,
        cache: false,
        contentType: false,    //不设置Content-Type请求头
        processData: false,    // 不处理发送的数据W
        type: "post",
        dataType: "json",
        success: function (datal) {
            console.log(datal)
            lightyear.notify(datal.msg, 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
            lightyear.loading('hide');
            $(".bs-example-modal-lg-upload").modal('hide')
            refresh();
        }
    })

}
}
function del(id) {
    lightyear.loading('show');  // 显示
    var r=confirm("确定删除这个资源嘛？");
    if(r){
        $.ajax(
            {
                url:'../project/del.html',
                type:'post',
                data: {id: id,

                },
                dataType: "json",
                success: function (data) {
                        lightyear.notify(data.msg, 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
                        lightyear.loading('hide');
                        refresh()

                }

            }

        )
    }

}

function share(id) {
    lightyear.loading('show');  // 显示
    $.ajax(
        {
            url: '../share/add.html',
            type: 'post',
            data: {
                pid: id,

            },
            dataType: "json",
            success: function (data) {

                lightyear.notify(data.msg, 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
                lightyear.loading('hide');
            }
        })

}
