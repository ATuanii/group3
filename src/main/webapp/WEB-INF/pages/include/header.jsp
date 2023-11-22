
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>

<%@taglib  uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
      rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+Vithkuqi&display=swap"
      rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+Vithkuqi&family=Noto+Serif+Balinese&display=swap"
      rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Kdam+Thmor+Pro&display=swap" rel="stylesheet">
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">

<!-- jQuery first, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
<nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">

			<div class="container">
				<a class="navbar-brand" href="/" style="display : flex; align-items: center;"><img src="https://i.imgur.com/ivspTC4.png" alt="logo" height="75px" width="75px" style="display: flex;">

                                                                     <p style="font-style:'Noto Sans Vithkuqi', sans-serif; display: flex; align-self: end; font-size: 0.6em; margin-left: 0.5em;">ASTROWORLD</p>
                                                                     </a>

				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarsFurni">
					<ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
						<li class="nav-item active">
							<a class="nav-link" href="/">Home</a>
						</li>
						<li><a class="nav-link" href="shop">Shop</a></li>
						<li><a class="nav-link" href="about">About us</a></li>
						<li><a class="nav-link" href="services">Services</a></li>
						<li><a class="nav-link" href="blog.html">Blog</a></li>
						<li><a class="nav-link" href="contact.html">Contact us</a></li>
						<sec:authorize access="isAuthenticated()">
                             <sec:authorize access="hasRole('ROLE_ADMIN')">
                                <li><a class="nav-link" href="/admin/home">Admin Home</a></li>
                             </sec:authorize>
                             <li><a class="nav-link" href="/logout">Log out</a></li>
                        </sec:authorize>
						<!-- If No login then will show Login Page -->
						<sec:authorize access="!isAuthenticated()">
						<li><a class="nav-link" href="login">Login</a></li>
                        <li><a class="nav-link" href="signup">Sign up</a></li>
                        </sec:authorize>
					</ul>

					<ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
				   <li><a class="nav-link" href="/cart"><img src="resources/images/cart.svg"></a></li>
                   </ul>
				</div>
			</div>

		</nav>
</header>
<!-- Header Section End -->
<style>
.dropdown-content {
  right: 0;
}
.MenuStyle {
    font-family: 'Kdam Thmor Pro', sans-serif;
}
/* unvisited link */
a:link {
    color: black;
}

/* visited link */
a:visited {
    color: black;
}

/* mouse over link */
a:hover {
    color: silver;
}

/* selected link */
a:active {
    color: silver;
}
/* Style The Dropdown Button */
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f1f1f1}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
  background-color: #3e8e41;
}
</style>
