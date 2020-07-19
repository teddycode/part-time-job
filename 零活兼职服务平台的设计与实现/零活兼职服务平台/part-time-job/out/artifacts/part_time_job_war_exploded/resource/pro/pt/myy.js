    $('#listtable').bootstrapTable({
        method : 'post',  //服务器数据的请求方式 'get' or 'post'
        contentType : "application/json",  //发送到服务器的数据编码类型
        url : '../myy/list.html?yyuserid='+$("#userid").val(),  //服务器数据的加载地址
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
                field : 'yyid',
                title : '序号',

                align : 'center',
                valign : 'middle'
            },{
                field : 'mid',
                title : '兼职名称',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user
                    $.ajax({
                        url: "../myjob/list.html",
                        dataType: "json",
                        type: "get",
                        data: {mid: value},
                        async: false,
                        success: function (datal) {
                            $.ajax({
                                url: "../part_time_job/list.html",
                                dataType: "json",
                                type: "get",
                                data: {pid: datal.data[0].mpid},
                                async: false,
                                success: function (data) {
                                    user = data.data[0].pname
                                }
                            })
                        }
                    })
                    return user
                }
            },{
                field : 'mid',
                title : '兼职详情',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user
                    $.ajax({
                        url: "../myjob/list.html",
                        dataType: "json",
                        type: "get",
                        data: {mid: value},
                        async: false,
                        success: function (datal) {
                            $.ajax({
                                url: "../part_time_job/list.html",
                                dataType: "json",
                                type: "get",
                                data: {pid: datal.data[0].mpid},
                                async: false,
                                success: function (data) {
                                    user = data.data[0].pval
                                }
                            })
                        }
                    })


                    return user
                }
            },{
                field : 'mid',
                title : '兼职年龄',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user

                    $.ajax({
                        url: "../myjob/list.html",
                        dataType: "json",
                        type: "get",
                        data: {mid: value},
                        async: false,
                        success: function (datal) {
                            $.ajax({
                                url: "../part_time_job/list.html",
                                dataType: "json",
                                type: "get",
                                data: {pid: datal.data[0].mpid},
                                async: false,
                                success: function (data) {
                                    user=data.data[0].peage
                                    user=user+'-'+data.data[0].psage
                                }
                            })
                        }
                    })

                    return user
                }
            },{
                field : 'mid',
                title : '兼职性别',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user
                    $.ajax({
                        url: "../myjob/list.html",
                        dataType: "json",
                        type: "get",
                        data: {mid: value},
                        async: false,
                        success: function (datal) {
                            $.ajax({
                                url: "../part_time_job/list.html",
                                dataType: "json",
                                type: "get",
                                data: {pid: datal.data[0].mpid},
                                async: false,
                                success: function (data) {
                                    user=data.data[0].psex

                                }
                            })
                        }
                    })

                    return user
                }
            },{
                field : 'mid',
                title : '最低信誉分',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user

                    $.ajax({
                        url: "../myjob/list.html",
                        dataType: "json",
                        type: "get",
                        data: {mid: value},
                        async: false,
                        success: function (datal) {
                            $.ajax({
                                url: "../part_time_job/list.html",
                                dataType: "json",
                                type: "get",
                                data: {pid: datal.data[0].mpid},
                                async: false,
                                success: function (data) {
                                    user=data.data[0].preputation
                                }
                            })
                        }
                    })

                    return user
                }
            },{
                field : 'mid',
                title : '兼职酬劳',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user
                    $.ajax({
                        url: "../myjob/list.html",
                        dataType: "json",
                        type: "get",
                        data: {mid: value},
                        async: false,
                        success: function (datal) {
                            $.ajax({
                                url: "../part_time_job/list.html",
                                dataType: "json",
                                type: "get",
                                data: {pid: datal.data[0].mpid},
                                async: false,
                                success: function (data) {
                                    user=data.data[0].pmoney
                                }
                            })
                        }
                    })

                    return user
                }
            },{
                field : 'mid',
                title : '兼职发布人',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user
                    $.ajax({
                        url: "../myjob/list.html",
                        dataType: "json",
                        type: "get",
                        data: {mid: value},
                        async: false,
                        success: function (datals) {
                            $.ajax({
                                url: "../part_time_job/list.html",
                                dataType: "json",
                                type: "get",
                                data: {pid: datals.data[0].mpid},
                                async: false,
                                success: function (datal) {
                                    $.ajax({
                                        url: "../user/list.html",
                                        dataType: "json",
                                        type: "get",
                                        data: {userid: datal.data[0].puserid},
                                        async: false,
                                        success: function (datal) {
                                            user = datal.data[0].username;
                                        }
                                    })

                                }
                            })
                        }
                    })
                    return user
                }
            },{
                field : 'mval',
                title : '内容',
                align : 'center',
                valign : 'middle',

            },{
                field : 'mjg',
                title : '处理结果',
                align : 'center',
                valign : 'middle',

            }]
    });
function refresh() {

    $("#listtable").bootstrapTable('refreshOptions',{url:'../myy/list.html'});

}

function upd(id) {
    $("#uid").val(id);
    $(".sh").modal();

}
function sh() {
    lightyear.loading('show');  // 显示
    $.ajax({
        url:'../myy/upd.html',
        type:'post',
        data: {yyid:$("#uid").val(),mjg:$("#reputation").val()
        },
        dataType: "json",
        success: function (data) {
            lightyear.notify(data.msg, 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
            lightyear.loading('hide');
            refresh()
            $(".sh").modal('hide');

        }
    })
}
