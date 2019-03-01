<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Todos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/styles.css">
</head>

<body class="d-flex flex-column h-100">

<header>
    <!-- Fixed navbar -->
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <a class="navbar-brand" href="#">Todo Webapp</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/index.html">Home <span class="sr-only">(current)</span></a>
                </li>
                <%--<li class="nav-item">--%>
                <%--<a class="nav-link" href="#">Link</a>--%>
                <%--</li>--%>
                <%--<li class="nav-item">--%>
                <%--<a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>--%>
                <%--</li>--%>
            </ul>
            <%--<form class="form-inline mt-2 mt-md-0">--%>
            <%--<input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">--%>
            <%--<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>--%>
            <%--</form>--%>
        </div>
    </nav>
</header>

<!-- Begin page content -->
<main role="main" class="flex-shrink-0">
    <div class="container">
        <div class="d-flex flex-row">

            <h1 class="mt-5 p-1">My todos</h1>

            <form class="mt-5 p-1" action="todos/new">
                <button type="submit" class="btn btn-outline-dark btn-circle btn-add-todo">
                    <i class="fa fa-plus fa-lg" aria-hidden="true"></i>
                </button>
            </form>
            <%--<p class="lead">Pin a footer to the bottom of the viewport in desktop browsers with this custom HTML and--%>
            <%--CSS. A--%>
            <%--fixed navbar has been added with <code>padding-top: 60px;</code> on the <code>main &gt;--%>
            <%--.container</code>.--%>
            <%--</p>--%>
            <%--<p>Back to <a href="/docs/4.3/examples/sticky-footer/">the default sticky footer</a> minus the navbar.</p>--%>
        </div>
        <%--<div class="row">--%>
        <%--<form class="form-inline">--%>
        <%--<div class="form-group mb-2">--%>
        <%--<label for="add-todo" class="sr-only">Email</label>--%>
        <%--<input type="text" class="form-control-plaintext" id="add-todo" placeholder="New todo">--%>
        <%--</div>--%>
        <%--<div class="form-group mx-sm-3 mb-2">--%>
        <%--<label for="inputPassword2" class="sr-only">Password</label>--%>
        <%--<input type="password" class="form-control" id="inputPassword2" placeholder="Password">--%>
        <%--</div>--%>
        <%--<button type="submit" class="btn btn-primary mb-2">Confirm identity</button>--%>
        <%--</form>--%>
        <%--</div>--%>
        <div class="d-flex flex-wrap">

            <c:forEach items="${todos}" var="todo">
                <div class="p-4">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <div class="d-flex">
                                <div class="p-1">

                                    <h5 class="card-title">${todo.name}</h5>
                                </div>
                                <div class="p-1 ml-auto">
                                    <form action="todos/${todo.id}/delete">
                                        <button type="submit" class="btn btn-danger">
                                            <i class="fa fa-trash" aria-hidden="true"></i>
                                        </button>
                                    </form>
                                </div>
                            </div>
                            <p class="card-text">Some quick example text to build on the card title and make up the
                                bulk
                                of the card's content.</p>
                            <a href="#" class="card-link">Card link</a>
                            <a href="#" class="card-link">Another link</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    </div>
</main>

<footer class="footer mt-auto py-3">
    <div class="container">
        <span class="text-muted">Place sticky footer content here.</span>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>
