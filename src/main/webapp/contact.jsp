<%-- 
    Document   : about
    Created on : Feb 28, 2022, 9:10:03 PM
    Author     : MeGa
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
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
            <c:if test="${not empty succMsg}">
                <div class="container text-center">
                    <div class="alert alert-success" role="alert">
                        ${succMsg}
                    </div>
                </div>
                <c:remove var="succMsg" />
            </c:if>
            <form action="user_comment" method="post">
                <div class="title">
                    <h1>Contact us</h1>
                </div>

                <div class="form-page">
                    <div class="form-items">
                        <input type="text" class="input" placeholder="Username" required>
                        <i class="fas fa-user"></i>
                    </div>
                    <div class="form-items">
                        <input type="email" class="input" placeholder="Email" required>
                        <i class="fas fa-envelope"></i>
                    </div>
                    <div class="form-items">
                        <textarea class="input" cols="30" rows="3" placeholder="Message....." required></textarea>
                        <i class="fas fa-comment"></i>
                    </div>
                </div>
               
                    <button type="submit" class="btn btn-light btn-primary"><i class="fas fa-arrow-right"></i>Submit</button>
                    
                
            </form>
        </div>

        <%@include file="all_components/footer.jsp" %>
    </body>
</html>
