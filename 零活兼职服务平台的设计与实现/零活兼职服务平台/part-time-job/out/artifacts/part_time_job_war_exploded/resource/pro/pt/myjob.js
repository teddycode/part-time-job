    $('#listtable').bootstrapTable({
        method : 'post',  //服务器数据的请求方式 'get' or 'post'
        contentType : "application/json",  //发送到服务器的数据编码类型
        url : '../myjob/list.html?muserid='+$("#userid").val(),  //服务器数据的加载地址
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
                field : 'mpid',
                title : '兼职名称',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user
                    $.ajax({
                        url:"../part_time_job/list.html",
                        dataType:"json",
                        type:"get",
                        data:{pid:value},
                        async: false,
                        success:function (data) {
                            user=data.data[0].pname
                        }
                    })
                    return user
                }
            },{
                field : 'mpid',
                title : '兼职详情',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user
                    $.ajax({
                        url:"../part_time_job/list.html",
                        dataType:"json",
                        type:"get",
                        data:{pid:value},
                        async: false,
                        success:function (data) {
                            user=data.data[0].pval
                        }
                    })
                    return user
                }
            },{
                field : 'mpid',
                title : '兼职年龄',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user
                    $.ajax({
                        url:"../part_time_job/list.html",
                        dataType:"json",
                        type:"get",
                        data:{pid:value},
                        async: false,
                        success:function (data) {
                            user=data.data[0].peage
                            user=user+'-'+data.data[0].psage
                        }
                    })
                    return user
                }
            },{
                field : 'mpid',
                title : '兼职性别',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user
                    $.ajax({
                        url:"../part_time_job/list.html",
                        dataType:"json",
                        type:"get",
                        data:{pid:value},
                        async: false,
                        success:function (data) {
                            user=data.data[0].psex
                        }
                    })
                    return user
                }
            },{
                field : 'mpid',
                title : '最低信誉分',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user
                    $.ajax({
                        url:"../part_time_job/list.html",
                        dataType:"json",
                        type:"get",
                        data:{pid:value},
                        async: false,
                        success:function (data) {
                            user=data.data[0].preputation
                        }
                    })
                    return user
                }
            },{
                field : 'mpid',
                title : '兼职酬劳',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user
                    $.ajax({
                        url:"../part_time_job/list.html",
                        dataType:"json",
                        type:"get",
                        data:{pid:value},
                        async: false,
                        success:function (data) {
                            user=data.data[0].pmoney
                        }
                    })
                    return user
                }
            },{
                field : 'mpid',
                title : '兼职发布人',
                align : 'center',
                valign : 'middle',
                formatter:function (value,row,index) {
                    var user
                    $.ajax({
                        url:"../part_time_job/list.html",
                        dataType:"json",
                        type:"get",
                        data:{pid:value},
                        async: false,
                        success:function (data) {
                            $.ajax({
                                url: "../user/list.html",
                                dataType: "json",
                                type: "get",
                                data: {userid: data.data[0].puserid},
                                async: false,
                                success: function (datal) {
                                    user=datal.data[0].username;
                                }
                            })

                        }
                    })
                    return user
                }
            },{
                field : 'mstau',
                title : '状态',
                align : 'center',
                valign : 'middle'
            },{
                field : 'mfuserid',
                title : '发布人评价',
                align : 'center',
                valign : 'middle'
            },{
                field : 'mjuserid',
                title : '我的评价',
                align : 'center',
                valign : 'middle'
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
                field : 'mid',
                title : '操作',
                align : 'center',
                valign : 'middle',
                formatter:function(value,row,index){
                    var D='';
                    D = '<button class="btn btn-primary btn-sm" onclick="del(\'' + row.mid + '\')">取消</button> ';
                    var C= '<button class="btn btn-primary btn-sm" onclick="upd(\'' + row.mid + '\')">有意见</button> ';
                    var E= '<button class="btn btn-primary btn-sm" onclick="p(\'' + row.mid + '\')">评价</button> ';

                    return D+C+E;
                }
            }

        ]
    });


function refresh() {

    $("#listtable").bootstrapTable('refreshOptions',{url:'../myjob/list.html?muserid='+$("#userid").val()});

}

function upd(id) {

    $("#uid").val(id);
    $(".sh").modal()
}

function sh() {
    lightyear.loading('show');  // 显示
    $.ajax({
        url:'../myy/add.html',
        type:'post',
        data: {mid:$("#uid").val(),yyuserid:$("#userid").val(),mval:$("#reputation").val()
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

function del(id) {
    lightyear.loading('show');  // 显示
    $.ajax({
        url:'../myjob/del.html',
        type:'post',
        data: {mid:id
        },
        dataType: "json",
        success: function (data) {
            lightyear.notify(data.msg, 'success', 5000, 'mdi mdi-emoticon-happy', 'top', 'center');
            $.ajax({
                url: '../part_time_job/list.html',
                type: 'post',
                data: {
                    userid:$("#userid").val()
                },
                dataType: "json",
                success: function (data) {
                    var xyf=accSubtr(data.data[0].reputation,10)
                    $.ajax({
                        url: '../part_time_job/upd.html',
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


            lightyear.loading('hide');
            refresh()
        }
    })
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
        data: {mid:$("#uid").val(),mjuserid:$("#puser").val()
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

