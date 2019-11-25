<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改书籍 ！</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <%--标题--%><%--书籍原来的信息，修改按钮--%>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍信息</small>
                </h1>
            </div>
        </div>
    </div>
</div>
<div style="padding: 100px 100px 10px;">
    <form method="post" action="${pageContext.request.contextPath}/book/updateBook"
          class="bs-example bs-example-form" role="form">
        <div class="input-group">
            <%--<span class="input-group-addon">书籍名称</span>--%>
            <input type="hidden" name="bookID" value="${book.getBookID()}">
        </div>
        <br>
        <div class="input-group">
            <span class="input-group-addon">书籍名称</span>
            <input type="text" class="form-control" name="bookName" value="${book.getBookName()}">
        </div>
        <br>
        <div class="input-group">
        <span class="input-group-addon">书籍数量</span>
        <input type="text" class="form-control" name="bookCounts" value="${book.getBookCounts()}">
    </div>
        <br>
        <div class="input-group">
            <span class="input-group-addon">书籍描述</span>
            <input type="text" class="form-control" name="detail" value="${book.getDetail()}">
        </div>
        <br>
        <div class="text-center">
            <input class="btn btn-primary" type="submit" value="修改书籍信息"/>
        </div>
    </form>
</div>
</body>
</html>
