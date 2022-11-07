<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%><%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html xmlns:th="https://www/thymeleaf.org">
<head>
    <meta charset="ISO-8859-1">
    <title>user - Job Listing</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
</head>
<body>
<%--Header--%>
<div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
        <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
            <%--            <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>--%>
            logo
        </a>

        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li><a href="/" class="nav-link px-2 link-secondary">Home</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">Features</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">Pricing</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">About</a></li>
        </ul>

        <div class="col-md-3 text-end">
            <% if(session.getAttribute("user-id") == null) {%>
                <a href="/user/login" type="button" class="btn btn-outline-primary me-2">Login</a>
                <a href="/user/register" type="button" class="btn btn-primary">Sign-up</a>
            ${request.getAttribute("user-id")}
            <%} else {%>
                <a href="/user" class="btn btn-light">${user.name}</a>
            <% } %>
        </div>
    </header>
</div>

<%--Body--%>

<div class="container d-flex flex-column justify-content-center align-items-center col-md-4">
    <div class="w-100 d-flex flex-column">
        <h3 class="display-6">
            Welcome, ${user.name != null ?
            (user.name).split(" ")[0]
             :
            ""}
        </h3>

        <h2 class="text-uppercase text-secondary font-weight-light">Info</h2>
        <div class="p-5 m-5 border border-secondary rounded d-flex flex-row justify-content-between align-items-center">
            <div>
                <h5 class="" id="user-full-name">${user.name != null ? user.name : ""}</h5>
                <h6><a href="#" id="user-email" class="text-decoration-none">${user.email != null ? user.email : ""}</a></h6>
            </div>
            <div class="p-3 bg-primary rounded-circle">
                <h1 id="initials" class="text-uppercase"></h1>
            </div>
        </div>

        <h2 class="text-uppercase text-secondary font-weight-light">Resume</h2>
        <div class="d-flex flex-row justify-content-evenly align-items-center bg-secondary p-3 rounded">
            <a href="#" class="text-decoration-none text-dark">
                <div>
                    <h5>${user.resumeFile != null ? user.resumeFile : "Upload Resume"}</h5>
                </div>
            </a>
            <a href="#" class="text-decoration-none text-dark">
                <span class="material-symbols-outlined">edit</span>
            </a>
        </div>
    </div>
</div>


<%--Footer--%>
<div class="container">
    <footer class="row row-cols-1 row-cols-sm-2 row-cols-md-5 py-5 my-5 border-top">
        <div class="col mb-3">
            <a href="/" class="d-flex align-items-center mb-3 link-dark text-decoration-none">
                <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
            </a>
            <p class="text-muted">© 2022</p>
        </div>

        <div class="col mb-3">

        </div>

        <div class="col mb-3">
            <h5>Section</h5>
            <ul class="nav flex-column">
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
            </ul>
        </div>

        <div class="col mb-3">
            <h5>Section</h5>
            <ul class="nav flex-column">
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
            </ul>
        </div>

        <div class="col mb-3">
            <h5>Section</h5>
            <ul class="nav flex-column">
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Home</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Features</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">Pricing</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">FAQs</a></li>
                <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-muted">About</a></li>
            </ul>
        </div>
    </footer>
</div>

</body>
<script>
    window.onload = function () {
        let userName = document.getElementById("user-full-name").innerHTML.split(" ");
        console.log(userName[0])
        console.log(userName[0] === "")
        if(userName[0] === "") {
            let email = document.getElementById("user-email").innerHTML;
            userName = [email[0], email[1]]
            console.log(userName)
        } else {
            userName = [userName[0][0], userName[0][0]]
        }
        document.getElementById("initials").innerHTML = userName[0] + "<span class='text-white'>"+ userName[1] + "</span>"
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</html>



<div>
    <h1>${canEdit}</h1>
    <h1>${user.id != null ? user.id : ""}</h1>
    <h1></h1>
    <h1></h1>
    <h1>${user.password != null ? user.password : ""}</h1>
</div>
