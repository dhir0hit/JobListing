<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%><%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html xmlns:th="https://www/thymeleaf.org">
<head>
    <meta charset="ISO-8859-1">
    <title>Job Listing</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Eczar:wght@400;500;600;700;800&family=Mulish:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;0,1000;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900;1,1000&family=Roboto+Slab:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,1,0" />
    <style>
        .mulish {
            font-family: 'Mulish', sans-serif;
        }
    </style>
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
<div class="p-5">
    <div class="row justify-content-evenly">
        <div class="col-md-5 p-3 d-flex flex-direction justify-content-center">
            <div class="col-9">
                <form:form method="post" cssStyle="display: flex; flex-direction: column; max-width: 300px; margin: 0;" >

                    <div id="_email_group">
                        <div class="my-4 d-flex flex-column" style="gap: 10px;">
                            <form:label path="Email">Email</form:label>
                            <form:input path="Email" cssClass="form-control" placeholder="example@mail.com"/>
                            <p>
                                Enter your <Strong>Personal Email</Strong> or <strong>Business Email</strong> as Identity
                            </p>
                        </div>
                    </div>

                    <div id="_password_group">
                        <div class="mt-4 d-flex flex-column " style="gap: 10px;">
                            <form:label path="Password">Password</form:label>
                            <form:password path="Password" cssClass="form-control" />

                            <dl>
                                <dt>
                                    It is Preferable to Enter a Strong Password with
                                </dt>
                                <dd>Capital letters, </dd>
                                <dd>Numbers, and </dd>
                                <dd>Special Characters </dd>
                            </dl>
                        </div>
                    </div>

                    <div id="_fullName_group">
                        <div class="mt-4 d-flex flex-column" style="gap: 10px;">
                            <form:label path="name">Full name</form:label>
                            <form:input path="name"  cssClass="form-control" placeholder="(Optional)"/>
                            <p>
                                Enter your Full name<br/>
                                Use this format<br/>
                                [FirstName MiddleName LastName]
                            </p>
                        </div>
                    </div>

                    <button id="_SubmitButton" class="btn btn-primary mt-4 d-flex flex-row justify-content-around align-items-center" type="submit">
                        Next
                        <span class="material-symbols-outlined">
                            arrow_forward_ios
                        </span>
                    </button>
                </form:form>
            </div>
        </div>

        <div class="col-sm-3">
            <div class="p-4 border">
                <h1 class="text-muted" style="font-family: 'Roboto Slab', serif;">Form details</h1>
                <hr/>

                <div>
                    <div class="my-3">
                        <h5>Email</h5>
                        <div class="_form_detail d-flex flex-row align-items-center p-2 bg-success bg-gradient bg-opacity-25" style="gap: 1rem">
                            <span class="_icon material-symbols-outlined">check</span>
                            <h6 class="m-0">valid</h6>
                        </div>
                    </div>

                    <div class="my-3">
                        <h5>Password <span id="passwordStrengthOutput" class="text-muted">[Strong]</span></h5>
                        <div style="width: 0%; height: 2px; background-color: red"></div>
                            <div class="_form_detail d-flex flex-row align-items-center p-2 bg-success bg-gradient bg-opacity-25"
                                 style="width:100%; gap: 1rem;">
                                <span class="_icon material-symbols-outlined">check</span>
                                <h6 class="m-0">valid</h6>
                            </div>
                        <div style="width: 0%; height: 2px; background-color: red"></div>
                    </div>


                    <div class="my-3 ">
                        <h5>Full Name <span class="text-black-50">(Optional)</span></h5>
                        <div class="_form_detail" style="display: none">
                            <div class="d-flex flex-row align-items-center p-2 bg-success bg-gradient bg-opacity-25" style="gap: 1rem;">
                                <span class="_icon material-symbols-outlined">check</span>
                                <h6 class="m-0">valid</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
<script type="text/javascript" src="../../javascript/register.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</html>
