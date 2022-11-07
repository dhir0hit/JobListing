<%@ page language="java" contentType="text/html; ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html xmlns:th="https://www/thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Job Listing</title>
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
            <li><a href="#" class="nav-link px-2 link-secondary">Home</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">Features</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">Pricing</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
            <li><a href="#" class="nav-link px-2 link-dark">About</a></li>
        </ul>

        <div class="col-md-3 text-end">
            <button type="button" class="btn btn-outline-primary me-2">Login</button>
            <button type="button" class="btn btn-primary">Sign-up</button>
        </div>
    </header>
</div>

<%--Body--%>


<div class="container">
    <div class="d-flex flex-column" >
        <%--Job Header--%>
        <div class="d-flex flex-column">
            <h3>Job Title</h3>
            <h6>Company Name</h6>
            <h6 class="text-muted p-0">Location, LO</h6>
            <h6 class="text-muted p-0">[List]</h6>
            <div class="d-flex flex-row justify-content-start align-items-center">
                <button class="btn btn-primary">Apply Now</button>
                <button class="btn btn-transparent"><span class="material-symbols-outlined">share</span></button>
            </div>
        </div>

            <hr class="p-2"/>

        <%--Job Body--%>
        <div>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Id faucibus nisl tincidunt eget nullam non. Mauris ultrices eros in cursus turpis massa tincidunt. Interdum velit euismod in pellentesque massa placerat duis. Magna ac placerat vestibulum lectus mauris ultrices. Nisl nisi scelerisque eu ultrices. Laoreet sit amet cursus sit amet dictum. Non nisi est sit amet facilisis magna etiam tempor orci. Elit eget gravida cum sociis natoque penatibus et. Mauris nunc congue nisi vitae suscipit.
            <br/>
            Volutpat blandit aliquam etiam erat velit scelerisque. Amet est placerat in egestas erat imperdiet sed euismod nisi. Eu feugiat pretium nibh ipsum consequat. Duis ut diam quam nulla porttitor massa id neque. Duis convallis convallis tellus id. Condimentum lacinia quis vel eros donec ac odio tempor orci. Sed turpis tincidunt id aliquet. Accumsan tortor posuere ac ut consequat semper. Magna fermentum iaculis eu non diam. Sit amet consectetur adipiscing elit ut aliquam purus. Venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Nec sagittis aliquam malesuada bibendum arcu. Elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at. Odio eu feugiat pretium nibh ipsum consequat. Amet porttitor eget dolor morbi non arcu risus quis. Morbi non arcu risus quis varius quam quisque.
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
</html>
