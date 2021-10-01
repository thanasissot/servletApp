<%--
  Created by IntelliJ IDEA.
  User: thana
  Date: 1/10/2021
  Time: 9:55 μ.μ.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.mongodb.DBObject" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"
            integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/list.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">HOME</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <%--                    <li class="nav-item">--%>
                <%--                        <a class="nav-link active" aria-current="page" href="${pageContext.request.contextPath}/">Home</a>--%>
                <%--                    </li>--%>
                <%--                    <li class="nav-item">--%>
                <%--                        <a class="nav-link" href="${pageContext.request.contextPath}/list">List</a>--%>
                <%--                    </li>--%>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row align-items-center mb-3 mt-3">
        <h3>This is the List page!</h3>
    </div>

    <div class="row align-items-start">
        <div class="col-8 col-sm-8 col-md-8 col-lg-8">
            <ul class="col-4">
                <% ArrayList list = (ArrayList) request.getAttribute("list");
                    for (int i = 0; i < list.size(); i++) {
                        String itemName = ((DBObject) list.get(i)).get("name").toString();
                        session.setAttribute("name", itemName);
                %>
                <li>${name}
                    <a type="button" class="btn btn-outline-danger btn-sm" style="border-style: none;" href="${pageContext.request.contextPath}/deleteItem?name=${name}">
                        X
                    </a>
                </li>
                <% } %>
            </ul>
        </div>

        <div style="border-left: black 2px solid;" class="col-4 col-sm-4 col-md-4 col-lg-4 col-xl-4">
            <form action="" method="post">
                <label for="itemName" class="form-label" >Enter Item name here:</label>
                <input type="text" name="itemName" placeholder="List Item #int" class="form-control" id="itemName">
                <button type="submit" value="login" class="mt-2 btn btn-primary">Add Item</button>
            </form>
        </div>

    </div>

</div>
</body>
</html>
