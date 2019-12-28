<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--使用jstl标签--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script>
        $(function () {
            //查询用户信息
            $.get("user/findOne",{},function (data) {
                var msg = "欢迎回来，"+data.username;
                $("#span_username").html(msg);

            });
        });
    </script>
</head>
<body>
    <div class="container">
        <div class="jumbotron">
            <div class="text-center">
                <h1>欢迎光临</h1>
                <p><a href="${pageContext.request.contextPath}/book/allbook">进入书籍列表</a></p>
            </div>
            <!-- 登录状态  -->
            <div class="text-center">
                <span id="span_username"></span>
                <a href="${pageContext.request.contextPath}/user/exit">退出</a>
            </div>
        </div>
        <div class="jumbotron text-center" style="margin-bottom:0">
            <p>底部内容</p>
            <p>此处空白，一无所有</p>
        </div>
    </div>
</body>
</html>
