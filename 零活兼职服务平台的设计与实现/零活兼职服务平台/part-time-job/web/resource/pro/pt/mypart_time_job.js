
    document.getElementById("qytoolbar").innerHTML='<button data-toggle="modal" data-target=".add" class="btn btn-primary btn-sm" >发布</button> ';
    $('#listtable').bootstrapTable({
        method : 'post',  //服务器数据的请求方式 'get' or 'post'
        contentType : "application/json",  //发送到服务器的数据编码类型
        url : '../part_time_job/list.html?puserid='+$("#userid").val(),  //服务器数据的加载地址
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
                title : '兼职名称',
                align : 'center',
                valign : 'middle',

            },{
                field : 'pval',
                title : '兼职详情',
                align : 'center',
                valign : 'middle',

            },{
                field : 'jpid',
                title : '兼职年龄',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user

                    user=row.peage
                    user=user+'-'+row.psage

                    return user
                }
            },{
                field : 'psex',
                title : '兼职性别',
                align : 'center',
                valign : 'middle',

            },{
                field : 'preputation',
                title : '最低信誉分',
                align : 'center',
                valign : 'middle',

            },{
                field : 'pmoney',
                title : '兼职酬劳',
                align : 'center',
                valign : 'middle',

            },{
                field : 'puserid',
                title : '兼职发布人',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user

                    $.ajax({
                        url: "../user/list.html",
                        dataType: "json",
                        type: "get",
                        data: {userid: value},
                        async: false,
                        success: function (datal) {
                            user=datal.data[0].username;
                        }
                    })

                    return user
                }
            },{
                field : 'pcount',
                title : '需求人数',
                align : 'center',
                valign : 'middle'
            },{
                field : 'pstau',
                title : '状态',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    if (value==0){
                        return '上架'
                    }else{
                        return '下架'
                    }
                }
            },{
                field : 'ptype',
                title : '类型',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user

                    $.ajax({
                        url: "../type/list.html",
                        dataType: "json",
                        type: "get",
                        data: {tid: value},
                        async: false,
                        success: function (datal) {
                            user=datal.data[0].tname;
                        }
                    })

                    return user
                }
            },{
                field : 'puserreputation',
                title : '发布人信誉分数',
                align : 'center',
                valign : 'middle'
            },{
                field : 'pid',
                title : '操作',
                align : 'center',
                valign : 'middle',
                formatter:function(value,row,index){

                    var D='<button class="btn btn-primary btn-sm" onclick="upd(\'' + row.pid + '\')">修改</button> ';
                    var F  =
                        '<button class="btn btn-primary btn-sm" onclick="timers(\'' + row.pid + '\')">设置失效时间</button> ';

                    var C  =
                        '<button class="btn btn-primary btn-sm" onclick="del(\'' + row.pid + '\')">删除</button> ';
                    var E='<button class="btn btn-primary btn-sm" onclick="sel(\'' + row.pid + '\')">查看员工</button> ';

                    return C+D+E+F;
                }
            }]
    });

    $('#sel').bootstrapTable({
        method : 'post',  //服务器数据的请求方式 'get' or 'post'
        contentType : "application/json",  //发送到服务器的数据编码类型
        url : '../myjob/list.html',  //服务器数据的加载地址
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
                field : 'mid',
                title : '序号',
                align : 'center',
                valign : 'middle'
            },{
                field : 'mstau',
                title : '状态',
                align : 'center',
                valign : 'middle'
            },{
                field : 'muserid',
                title : '员工',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user

                    $.ajax({
                        url: "../user/list.html",
                        dataType: "json",
                        type: "get",
                        data: {userid: value},
                        async: false,
                        success: function (datal) {
                            user=datal.data[0].username;
                        }
                    })

                    return user
                }
            },{
                field : 'mfuserid',
                title : '我的评价',
                align : 'center',
                valign : 'middle'
            },{
                field : 'mjuserid',
                title : '员工评价',
                align : 'center',
                valign : 'middle'
            },{
                field : 'mid',
                title : '操作',
                align : 'center',
                valign : 'middle',
                formatter:function(value,row,index){
                    var D='';
                    D = '<button class="btn btn-primary btn-sm" onclick="del(\'' + row.mid + '\')">取消</button> ';

                    var C= ''
                        if ($.trim(row.mstau)=='已报名'){
                          C=  '<button class="btn btn-primary btn-sm" onclick="upds(\'' + row.mid + '\')">结算</button> ';

                        }
                    var E= '<button class="btn btn-primary btn-sm" onclick="p(\'' + row.mid + '\')">评价</button> ';

                    return D+C+E;
                }
            }

        ]
    });
    $.ajax({
        url:'../type/list.html',
        type:'post',
        dataType: "json",
        success: function (deldata) {
            $.each(deldata.data, function (index, item) {

                $(".types").append("<option value='"+deldata.data[index].tid+"'>"+deldata.data[index].tname+"</option>");
            });
        }


    })

function refresh() {

    $("#listtable").bootstrapTable('refreshOptions',{url:'../part_time_job/list.html?puserid='+$("#userid").val()});

}

function timers(id) {
        $(".timer").modal();
        $("#jidse").val(id)
}

function tim() {

    var timer=accMul(3600000000,$("#num").val());
    setTimeout(function () {
      $.ajax({
          url:"../part_time_job/upd.html",
          type:"get",
          dataType:"json",
          data:{pid:$("#jidse").val(),pstau:1},
          success:function (data) {

          }
      })
    },timer )

}


function del(id) {
    lightyear.loading('show');  // 显示
    $.ajax({
        url: '../part_time_job/del.html',
        type: 'post',
        data: {
           pid:id
        },
        dataType: "json",
        success: function (datal) {
            lightyear.notify(datal.msg, 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
            lightyear.loading('hide');
            refresh()
        }
    })

}

function add() {
$.ajax({
    url: '../user/list.html',
    type: 'post',
    data: {
       userid:$("#userid").val()
    },
    dataType: "json",
    success: function (data) {
       var xyf=accAdd(data.data[0].reputation,10)
        console.log(data.data)
        $.ajax({
            url: '../user/upd.html',
            type: 'post',
            data: {
                userid:$("#userid").val(),
                reputation:xyf
            },
            dataType: "json",
            success: function (data) {

            }
            })

    }
})
    var user=0

    $.ajax({
        url: "../user/list.html",
        dataType: "json",
        type: "get",
        data: {userid: $("#userid").val()},
        async: false,
        success: function (datal) {
            user=datal.data[0].reputation;
            console.log(user)
        }
    })
    if (user>=100){
        user=100;
    }
    var clx=$("#sh option:selected");
    var typ=$("#typ option:selected");

    lightyear.loading('show');  // 显示
    if (16<$.trim($("#peage").val())<$.trim($("#psage").val())<70){
        $.ajax({
            url: '../part_time_job/add.html',
            type: 'get',
            data: {
                pname:$("#pname").val(),
                pval:$("#pval").val(),
                psage:$("#psage").val(),
                peage:$("#peage").val(),
                psex:clx.val(),
                preputation:$("#preputation").val(),
                pmoney:$("#pmoney").val(),
                pstau:0,
                pcount:$("#pcount").val(),
                puserid:$("#userid").val(),
                ptype:typ.val(),
                puserreputation:user
            },
            dataType: "json",
            success: function (datal) {
                lightyear.notify(datal.msg, 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
                lightyear.loading('hide');
                $(".add").modal('hide');
                refresh()
            }
        })
    }else{
        lightyear.notify('年龄错误', 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
        lightyear.loading('hide');
return false;
    }
}

function upd(id) {
    $.ajax({
        url: '../part_time_job/list.html',
        type: 'post',
        data: {
            pid:id
        },
        dataType: "json",
        success: function (data) {
            var da=data.data[0];
            $("#pnames").val(da.pname)
                $("#pvals").val(da.pval)
                $("#psages").val(da.psage)
                $("#peages").val(da.peage)
                $("#preputations").val(da.preputation)
                $("#pmoneys").val(da.pmoney)
                $("#pcounts").val(da.pcount)
                $("#pid").val(id);
                $(".upd").modal();

        }
    })
}

function up() {
    var user

    $.ajax({
        url: "../user/list.html",
        dataType: "json",
        type: "get",
        data: {userid: $("#userid").val()},
        async: false,
        success: function (datal) {
            user=datal.data[0].reputation;
        }
    })
    var types=$("#types option:selected");

    var clx=$("#shs option:selected");
    lightyear.loading('show');  // 显示
    if (16<$.trim($("#peage").val())<$.trim($("#psage").val())<70){
        $.ajax({
            url: '../part_time_job/upd.html',
            type: 'post',
            data: {
                pname:$("#pnames").val(),
                pval:$("#pvals").val(),
                psage:$("#psages").val(),
                peage:$("#peages").val(),
                psex:clx.val(),
                preputation:$("#preputations").val(),
                pmoney:$("#pmoneys").val(),
                pstau:0,
                pcount:$("#pcounts").val(),
                puserid:$("#userid").val(),
                pid:$("#pid").val(),
                ptype:types.val(),
                puserreputation:user
            },
            dataType: "json",
            success: function (datal) {
                lightyear.notify(datal.msg, 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
                lightyear.loading('hide');
                $(".upd").modal('hide');
                refresh()

            }
        })
    }else{
        lightyear.notify('年龄错误', 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
        lightyear.loading('hide');
        return
    }
}

//查看员工

function sel(id) {
    $("#sel").bootstrapTable('refreshOptions',{url:'../myjob/list.html?mpid='+id});

    $(".sel").modal()
}

function p(id) {

    $("#uid").val(id);
    $(".pj").modal()
}
function pj() {
    lightyear.loading('show');  // 显示
    $.ajax({
        url:'../myjob/upd.html',
        type:'post',
        data: {mid:$("#uid").val(),mfuserid:$("#puser").val()
        },
        dataType: "json",
        success: function (data) {
            lightyear.notify(data.msg, 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
            lightyear.loading('hide');
            refresh()
            $(".pj").modal('hide');

        }
    })
}
function upds(id) {

    lightyear.loading('show');  // 显示

    $.ajax({
        url:"../myjob/list.html",
        data:{mid:id},
        type:"post",
        dataType:"json",
        success:function (data) {
            //获取到兼职信息
            $.ajax({
                url:"../part_time_job/list.html",
                data:{pid:data.data[0].mpid},
                type:"post",
                dataType:"json",
                success:function (dataSource) {
                    console.log(dataSource.data)
                    //获取到兼职发布人员的余额
                    $.ajax({
                        url: "../user/list.html",
                        data: {userid: dataSource.data[0].puserid},
                        type: "post",
                        dataType: "json",
                        success: function (databaseSync) {
                            console.log(databaseSync.data)
                            console.log("用户余额"+parseInt(databaseSync.data[0].money))
                            console.log("兼职金额"+parseInt(dataSource.data[0].pmoney))

                            if (parseInt(databaseSync.data[0].money)>=parseInt(dataSource.data[0].pmoney)){
                                    //扣除发布人员的余额
                                $.ajax({
                                    url: "../user/list.html",
                                    data: {userid: databaseSync.data[0].puserid,money: accSubtr(databaseSync.data[0].money,dataSource.data[0].pmoney)},
                                    type: "post",
                                    dataType: "json",
                                    success: function (databaseSyncs) {
                                        console.log("扣除发布人员余额成功")
                                    },
                                    error:function () {
                                        console.log("扣除发布人员余额失败")

                                    }
                                })
                                //增加兼职人员的余额

                                $.ajax({
                                    url: "../user/list.html",
                                    data: {userid: data.data[0].muserid},
                                    type: "post",
                                    dataType: "json",
                                    success: function (databaseSyncse) {
                                        $.ajax({
                                            url: "../user/upd.html",
                                            data: {userid: databaseSyncse.data[0].userid,money: accAdd(databaseSyncse.data[0].money,dataSource.data[0].pmoney)},
                                            type: "post",
                                            dataType: "json",
                                            success: function (databaseSyncse) {
                                                console.log("增加兼职人员余额成功")


                                                $.ajax({
                                                    url:'../myjob/upd.html',
                                                    type:'post',
                                                    data: {mid:id,mstau:'已结算'
                                                    },
                                                    dataType: "json",
                                                    success: function (data) {
                                                        lightyear.notify(data.msg, 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
                                                        lightyear.loading('hide');

                                                    }
                                                })
                                            }
                                            ,error:function () {
                                                console.log("增加兼职人员余额失败")

                                            }
                                        })
                                    }
                                })


                            }else
                            {
                                lightyear.notify("余额不足！", 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
                                lightyear.loading('hide');

                            }
                        }
                    })
                }
            })
        }
    })


}




/**

 * 加法

 * @param arg1

 * @param arg2

 * @returns

 */

function accAdd(arg1,arg2){

    var r1,r2,m;

    try{r1=arg1.toString().split(".")[1].length}catch(e){r1=0};

    try{r2=arg2.toString().split(".")[1].length}catch(e){r2=0};

    m=Math.pow(10,Math.max(r1,r2));

    return (arg1*m+arg2*m)/m;

}



/**

 * 减法

 * @param arg1

 * @param arg2

 * @returns

 */

function accSubtr(arg1,arg2){

    var r1,r2,m,n;

    try{r1=arg1.toString().split(".")[1].length;}catch(e){r1=0;}

    try{r2=arg2.toString().split(".")[1].length;}catch(e){r2=0;}

    m=Math.pow(10,Math.max(r1,r2));

    //动态控制精度长度

    n=(r1>=r2)?r1:r2;

    return ((arg1*m-arg2*m)/m).toFixed(n);

}



/***

 * 乘法，获取精确乘法的结果值

 * @param arg1

 * @param arg2

 * @returns

 */

function accMul(arg1,arg2)

{

    var m=0,s1=arg1.toString(),s2=arg2.toString();

    try{m+=s1.split(".")[1].length}catch(e){};

    try{m+=s2.split(".")[1].length}catch(e){};

    return Number(s1.replace(".",""))*Number(s2.replace(".",""))/Math.pow(10,m);

}



/***

 * 除法，获取精确乘法的结果值

 * @param arg1

 * @param arg2

 * @returns

 */

function accDivCoupon(arg1,arg2){

    var t1=0,t2=0,r1,r2;

    try{t1=arg1.toString().split(".")[1].length;}catch(e){}

    try{t2=arg2.toString().split(".")[1].length;}catch(e){}

    with(Math){

        r1=Number(arg1.toString().replace(".",""));

        r2=Number(arg2.toString().replace(".",""));

        return (r1/r2)*pow(10,t2-t1);

    }

}
