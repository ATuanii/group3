<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="style.css">
    <style type="text/css">
            .login-box {
                max-width: 400px;
                margin: 100px auto;
                padding: 40px;
                background-color: #f2f2f2;
                border-radius: 10px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            }
            .btn {
                background-color: #4CAF50;
                border: none;
                color: white;
                padding: 10px 20px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                border-radius: 5px;
            }
            .btn:hover {
                background-color: #3e8e41;
            }
            .textbox {
                margin-bottom: 20px;
                position: relative;
            }
            .textbox input[type="email"], .textbox input[type="password"] {
                padding: 10px;
                width: 100%;
                border: none;
                border-radius: 5px;
                background-color: #fff;
                color: #444;
                font-size: 16px;
                margin: 0;
            }
            .textbox i {
                position: absolute;
                top: 50%;
                left: 10px;
                transform: translateY(-50%);
                color: #ccc;
                font-size: 20px;
            }
            .btn-primary {
                background-color: #4CAF50;
                border: none;
                color: white;
                padding: 10px 20px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                border-radius: 5px;
            }
            .btn-primary:hover {
                background-color: #3e8e41;
            }
            .text-danger {
                color: red;
            }
        </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form action="<c:url value="j_spring_security_check"/>" method="post">
                    <h1 class="text-center my-4">Login</h1>
                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="email" class="form-control" id="username" name="username" placeholder="Enter username">
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter password">
                    </div>
                    <div class="form-group">
                        <c:if test="${message != null && message != ''}">
                            <p class="text-danger">${message}</p>
                        </c:if>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
            </div>
        </div>
    </div>
    </body>
    </html>
