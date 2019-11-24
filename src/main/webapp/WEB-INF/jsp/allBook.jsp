<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--使用jstl标签--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>allBook !</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">
        <%--标题--%>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>书籍列表--显示所有书籍</small>
                    </h1>
                </div>
            </div>
        </div>
        <%--增加--%>
        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增</a>
            </div>
        </div>
        <%--展示页面：表格，修改，删除--%>
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <table class="table table-hover table-striped">
                        <%--表头--%>
                        <thead>
                            <tr>
                                <th>书籍编号</th>
                                <th>书籍名称</th>
                                <th>书籍数量</th>
                                <th>书籍描述</th>

                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="book" items="${list}">
                                <tr>
                                    <td>${book.getBookID()}</td>
                                    <td>${book.getBookName()}</td>
                                    <td>${book.getBookCounts()}</td>
                                    <td>${book.getDetail()}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.getBookID()}">更改</a>
                                        <a href="${pageContext.request.contextPath}/book/del/${book.getBookID()}">删除</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>

                    </table>
                </div>
            </div>

    </div>
</body>
</html>
