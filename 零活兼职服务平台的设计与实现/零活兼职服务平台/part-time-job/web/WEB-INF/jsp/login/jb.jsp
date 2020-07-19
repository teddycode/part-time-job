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

                <h3 class="panel-title text-center">举报管理</h3>

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



<c:if test="${sessionScope.user.userrole==0}">

<script type="text/javascript" src="<%=basePath%>resource/pro/gl/jb.js"></script>
</c:if>
<c:if test="${sessionScope.user.userrole==1}">

    <script type="text/javascript" src="<%=basePath%>resource/pro/pt/jb.js"></script>
</c:if>
</body>
</html>
