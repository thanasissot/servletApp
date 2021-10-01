<%--
  Created by IntelliJ IDEA.
  User: thana
  Date: 1/10/2021
  Time: 10:59 π.μ.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
    <%--  bootstrap cdn, use bootstrap in app  --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"
            integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/"
            crossorigin="anonymous"></script>
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
    <p>
        You reached this page through login button submit.
        <br>
        Your credentials Username : ${userName} and Password(Always "password") : ${password}
    </p>
    <p>
        Keep in mind that this is a simulated authorization.
        <br>
        We are going to implement real Auth in another servlet.
    </p>
</body>
</html>
