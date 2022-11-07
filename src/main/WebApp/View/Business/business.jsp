<%@ page language="java" contentType="text/html; ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html xmlns:th="https://www/thymeleaf.org">
<head>
    <meta charset="ISO-8859-1">
    <title>Job Listing</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,1,0" />
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
    <h1 class="mb-3 display-3">Company Name</h1>

    <%--TABS--%>
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <button id="main-link" class="nav-link active" aria-current="page">Main</button>
        </li>
        <li class="nav-item">
            <button id="review-link" class="nav-link">Review</button>
        </li>
        <li class="nav-item">
            <button id="about-link" class="nav-link">About</button>
        </li>
    </ul>

    <%--PAGES--%>
    <div class="mt-4">
        <%--main Page--%>
        <div id="main-page" class="m-2 container">
            <h2 class="mb-2">Company Name</h2>
            <a href="">Website</a>

            <p id="brief-info">info</p>
            <%--Review get copied from Review Tab--%>
            <div id="main-page-review">
                Review
            </div>
        </div>

        <%--review Page--%>
        <div id="review-page" class="m-2 container">
            <div class=" mb-4 d-flex flex-row-reverse justify-content-between ">
                <div id="Review" class="d-flex flex-direction-row align-items-center gap-3">
                    <div class="bg-secondary" style="-webkit-background-clip: text; -webkit-text-fill-color: transparent; width: fit-content">
                        <div class="bg-warning d-flex flex-directon-row"
                             style="-webkit-background-clip: text; -webkit-text-fill-color: transparent; overflow: visible; width: 50%">
                            <span class="material-symbols-outlined">star</span>
                            <span class="material-symbols-outlined">star</span>
                            <span class="material-symbols-outlined">star</span>
                            <span class="material-symbols-outlined">star</span>
                            <span class="material-symbols-outlined">star</span>
                        </div>
                    </div>

                    <h4 class="display-6">4.5</h4>

                </div>

                <div>
                    <%--TODO: show individual stars--%>
                    <%--5 star--%>
                    <div class="mt-2 d-flex flex-direction-row align-items-center gap-1">
                        <div class="bg-secondary" style="-webkit-background-clip: text; -webkit-text-fill-color: transparent; width: fit-content">
                            <div class="bg-warning d-flex flex-directon-row"
                                 style="-webkit-background-clip: text; -webkit-text-fill-color: transparent; overflow: visible; width: 100%">
                                <span class="material-symbols-outlined">star</span>
                                <span class="material-symbols-outlined">star</span>
                                <span class="material-symbols-outlined">star</span>
                                <span class="material-symbols-outlined">star</span>
                                <span class="material-symbols-outlined">star</span>
                            </div>
                        </div>
                        <div class="bg-secondary rounded" style="width: 200px; height: 5px"><div id="progressbar-5" class="bg-warning" style="height: 5px" ></div></div>
                        <h5 id="progress-5" class="m-0 text-muted">23</h5>
                    </div>

                        <%--4 Star--%>
                        <div class="mt-2 d-flex flex-direction-row align-items-center gap-1">
                            <div class="bg-secondary" style="-webkit-background-clip: text; -webkit-text-fill-color: transparent; width: fit-content">
                                <div class="bg-warning d-flex flex-directon-row"
                                     style="-webkit-background-clip: text; -webkit-text-fill-color: transparent; overflow: visible; width: 80%">
                                    <span class="material-symbols-outlined">star</span>
                                    <span class="material-symbols-outlined">star</span>
                                    <span class="material-symbols-outlined">star</span>
                                    <span class="material-symbols-outlined">star</span>
                                    <span class="material-symbols-outlined">star</span>
                                </div>
                            </div>
                            <div class="bg-secondary rounded" style="width: 200px; height: 5px"><div id="progressbar-4" class="bg-warning" style="height: 5px" ></div></div>
                            <h5 id="progress-4" class="m-0 text-muted">23</h5>
                        </div>

                        <%--3 Star--%>
                        <div class="mt-2 d-flex flex-direction-row align-items-center gap-1">
                            <div class="bg-secondary" style="-webkit-background-clip: text; -webkit-text-fill-color: transparent; width: fit-content">
                                <div class="bg-warning d-flex flex-directon-row"
                                     style="-webkit-background-clip: text; -webkit-text-fill-color: transparent; overflow: visible; width: 60%">
                                    <span class="material-symbols-outlined">star</span>
                                    <span class="material-symbols-outlined">star</span>
                                    <span class="material-symbols-outlined">star</span>
                                    <span class="material-symbols-outlined">star</span>
                                    <span class="material-symbols-outlined">star</span>
                                </div>
                            </div>
                            <div class="bg-secondary rounded" style="width: 200px; height: 5px"><div id="progressbar-3" class="bg-warning" style="height: 5px" ></div></div>
                            <h5 id="progress-3" class="m-0 text-muted">23</h5>
                        </div>

                        <%--2 Star--%>
                        <div class="mt-2 d-flex flex-direction-row align-items-center gap-1">
                            <div class="bg-secondary" style="-webkit-background-clip: text; -webkit-text-fill-color: transparent; width: fit-content">
                                <div class="bg-warning d-flex flex-directon-row"
                                     style="-webkit-background-clip: text; -webkit-text-fill-color: transparent; overflow: visible; width: 40%">
                                    <span class="material-symbols-outlined">star</span>
                                    <span class="material-symbols-outlined">star</span>
                                    <span class="material-symbols-outlined">star</span>
                                    <span class="material-symbols-outlined">star</span>
                                    <span class="material-symbols-outlined">star</span>
                                </div>
                            </div>
                            <div class="bg-secondary rounded" style="width: 200px; height: 5px"><div id="progressbar-2" class="bg-warning" style="height: 5px" ></div></div>
                            <h5 id="progress-2" class="m-0 text-muted">23</h5>
                        </div>

                        <%--1 Star--%>
                        <div class="mt-2 d-flex flex-direction-row align-items-center gap-1">
                            <div class="bg-secondary" style="-webkit-background-clip: text; -webkit-text-fill-color: transparent; width: fit-content">
                                <div class="bg-warning d-flex flex-directon-row"
                                     style="-webkit-background-clip: text; -webkit-text-fill-color: transparent; overflow: visible; width: 20%">
                                    <span class="material-symbols-outlined">star</span>
                                    <span class="material-symbols-outlined">star</span>
                                    <span class="material-symbols-outlined">star</span>
                                    <span class="material-symbols-outlined">star</span>
                                    <span class="material-symbols-outlined">star</span>
                                </div>
                            </div>
                            <div class="bg-secondary rounded" style="width: 200px; height: 5px"><div id="progressbar-1" class="bg-warning" style="height: 5px" ></div></div>
                            <h5 id="progress-1" class="m-0 text-muted">23</h5>
                        </div>
                </div>
            </div>

            <hr/>

            <h1>Review</h1>

        </div>

        <%--About Page--%>
        <div id="about-page" class="m-2 container">
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fusce ut placerat orci nulla pellentesque dignissim enim sit amet. Tellus rutrum tellus pellentesque eu tincidunt tortor. Volutpat est velit egestas dui id ornare arcu. Viverra nibh cras pulvinar mattis nunc sed blandit. Magna ac placerat vestibulum lectus mauris ultrices eros in. Commodo viverra maecenas accumsan lacus vel facilisis volutpat est velit. Accumsan tortor posuere ac ut consequat. Volutpat commodo sed egestas egestas fringilla phasellus faucibus scelerisque. Lacinia at quis risus sed vulputate odio. Posuere sollicitudin aliquam ultrices sagittis orci a. Elementum eu facilisis sed odio morbi. Est velit egestas dui id ornare arcu. Vulputate ut pharetra sit amet aliquam id diam maecenas. Sit amet consectetur adipiscing elit pellentesque habitant morbi. In aliquam sem fringilla ut morbi tincidunt augue interdum. Convallis a cras semper auctor neque. Duis ut diam quam nulla porttitor.

                Mattis ullamcorper velit sed ullamcorper morbi. Commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec. Erat nam at lectus urna duis convallis. Rhoncus mattis rhoncus urna neque viverra justo nec ultrices. Dictum sit amet justo donec enim diam vulputate ut pharetra. Varius duis at consectetur lorem donec massa sapien. Consectetur adipiscing elit ut aliquam purus sit amet luctus. Neque convallis a cras semper auctor neque. Et ligula ullamcorper malesuada proin libero nunc. Dolor magna eget est lorem. Quam viverra orci sagittis eu volutpat odio facilisis mauris sit. Consequat mauris nunc congue nisi. Mi sit amet mauris commodo quis imperdiet massa tincidunt nunc. Quam viverra orci sagittis eu volutpat odio facilisis mauris sit. Mauris sit amet massa vitae tortor condimentum lacinia quis. Id velit ut tortor pretium viverra suspendisse potenti.
            </p>
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
    /*
    * Declaring variables and assigning button and pages element to them...
    * */
    // Buttons
    let MainButton = document.getElementById("main-link");
    let ReviewButton = document.getElementById("review-link");
    let AboutButton = document.getElementById("about-link");

    // Pages
    let MainPage = document.getElementById("main-page");
    let ReviewPage = document.getElementById("review-page");
    let AboutPage = document.getElementById("about-page");

    // Brief info [For main page]
    let BriefInfo = document.getElementById("brief-info");

    // how many words needed about company's info on main page
    let MaxBriefInfo = 300;


    /**
     * Function called upon loading of website
     * */
    window.onload = function() {
        // Slicing information to 300 to show on main page
        let BriefText = AboutPage.children[0].innerHTML.slice(0, MaxBriefInfo)

        /*
        * Showing brief Information on main page about company
        * and button to navigate to about page
        * */
        // TODO: use AJAX
        BriefInfo.innerHTML = BriefText + "..." +
            "<button class='text-primary border-0 bg-transparent' onclick='displayAbout()'>Read more</button>";

        // calling displayMain to display Main info
        displayMain();

        /*
        * Copying Review from Review Page to Main Page
        * */
        // TODO: use AJAX
        document.getElementById("main-page-review").innerHTML = document.getElementById("Review").innerHTML;



    }

    /**
     * Creating function to display different information
     * and changing tabs' color
     *
     * [using display block, none to hide and show information and
     * adding-removing active class on tabs]
     * */
    function displayMain (event) {
        MainPage.style.display = "block";
        ReviewPage.style.display = "none";
        AboutPage.style.display = "none";

        MainButton.classList.add("active");
        ReviewButton.classList.remove("active");
        AboutButton.classList.remove("active");
    }
    function displayReview (event) {
        MainPage.style.display = "none";
        ReviewPage.style.display = "block";
        AboutPage.style.display = "none";

        MainButton.classList.remove("active");
        ReviewButton.classList.add("active");
        AboutButton.classList.remove("active");
    }
    function displayAbout (event) {
        MainPage.style.display = "none";
        ReviewPage.style.display = "none";
        AboutPage.style.display = "block";

        MainButton.classList.remove("active");
        ReviewButton.classList.remove("active");
        AboutButton.classList.add("active");
    }

    /*
    * Assigning function onclick of button to display info
    * */
    MainButton.onclick = displayMain
    ReviewButton.onclick = displayReview
    AboutButton.onclick = displayAbout
</script>
<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
    crossorigin="anonymous"></script>
</html>
