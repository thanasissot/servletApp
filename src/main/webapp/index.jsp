<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Servlet WebApp</title>

    <%--  bootstrap cdn, use bootstrap in app  --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
          integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"
            integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/"
            crossorigin="anonymous"></script>

    <%-- link .css file from app dir   --%>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/index.css">

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
            <h3>This is the landing page!</h3>
        </div>

        <div class="row align-items-start">
            <div class="col-sm-12 col-md-10 col-lg-8 list-group">

                <div class="list-group-item list-group-item-action flex-column align-items-start mt-3">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">Servlet serve html</h5>
                        <small></small>
                    </div>
                    <p class="mb-1">Using a servlet class with a PrintWriter class to write HTML code and sent as response.
                        <br>
                        <a href="${pageContext.request.contextPath}/simple">Link to simple servlet</a>
                    </p>
                    <small>Default class when initiating a web application using Intellij</small>
                </div>

                <div class="list-group-item list-group-item-action flex-column align-items-start mt-3">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">Servlet with Database</h5>
                        <small></small>
                    </div>
                    <p class="mb-1">Connecting to a MongoDB,running a server locally -development phase-, and connecting through
                        drivers with MongoDB, using RESTful-like architecture with verbs GET/POST we get the list of items
                        and present to the EndUser. We also use a button that links to a "pseudo delete" route (method = "get") to remove the
                        item from the database.
                        <br>
                        <a href="${pageContext.request.contextPath}/list">Link to List servlet</a>
                    </p>
                    <small>Default class when initiating a web application using Intellij</small>
                </div>

                <div class="list-group-item list-group-item-action flex-column align-items-start">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">Passing Parameters Servlet</h5>
                        <small></small>
                    </div>
                    <form action="parameters" method="get" class="mb-1 col-6 col-sm-6 col-md-6 col-lg-6 col-xl-5 col-xxl-5">
                        <label for="nameField" class="form-label">Enter your name here:</label>
                        <input type="text" name="name" class="form-control" id="nameField">
                        <button type="submit" class="mt-2 btn btn-primary">Submit</button>
                    </form>
                    <small>Using HttpServletRequest.getParameter() method.</small>
                </div>

                <div class="list-group-item list-group-item-action flex-column align-items-start">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">Simulating Auth Servlet</h5>
                        <small style="color: red; font-weight: bold; font-size: larger">${message}</small>
                    </div>
                    <div class="mb-1">
                        <form class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-5 col-xxl-5" method="get" action="login">
                            <label for="username" class="form-label">Username:</label>
                            <input type="text" name="userName" class="form-control" id="username" aria-describedby="emailHelp">
                            <label for="password" class="form-label">Password:</label>
                            <input type="password" name="userPass" class="form-control" id="password">
                            <button type="submit" class="mt-2 btn btn-primary">Submit</button>
                        </form>
                    </div>
                    <small>Again Using HttpServletRequest.getParameter() method: <small><em>Try "password"</em></small></small>
                </div>

                <div class="list-group-item list-group-item-action flex-column align-items-start">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">Servlet send redirect</h5>
                        <small></small>
                    </div>
                    <form class="mb-1 col-6 col-sm-6 col-md-6 col-lg-6 col-xl-5 col-xxl-5" method="get" action="search">
                        <label for="searchField" class="form-label">Enter search criteria here:</label>
                        <input type="text" name="name" class="form-control" id="searchField">
                        <button type="submit" class="mt-2 btn btn-primary">Submit</button>
                    </form>
                    <small>Using HttpServletResponse.sendRedirect() method.</small>
                </div>


            </div>
        </div>



    </div>

    <footer>
        <div>
            Visibility : hidden;
        </div>
    </footer>
</body>
</html>