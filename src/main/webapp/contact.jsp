<%-- 
    Document   : about
    Created on : Feb 28, 2022, 9:10:03 PM
    Author     : MeGa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us Page - Job Portal</title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
        <%@include file="all_components/all_css.jsp" %>    
        <link rel="stylesheet" href="all_components/footer.css"/>
        <link rel="stylesheet" href="all_components/contact.css"/>
    </head>
    <body>
        <%@include file="all_components/navbar.jsp" %>
        <div class="contact-us">
            <div class="title">
                <h1>Contact us</h1>
            </div>
            <div class="form">
                <div class="form-items">
                    <input type="text" class="input" placeholder="Username">
                    <i class="fas fa-user"></i>
                </div>
                <div class="form-items">
                    <input type="email" class="input" placeholder="Email">
                    <i class="fas fa-envelope"></i>
                </div>
                <div class="form-items">
                    <textarea class="input" cols="30" rows="3" placeholder="Message....."></textarea>
                    <i class="fas fa-comment"></i>
                </div>
            </div>
            <div class="btn">
                Submit
                <i class="fas fa-arrow-right"></i>
            </div>
        </div>
        <%@include file="all_components/footer.jsp" %>
    </body>
</html>
