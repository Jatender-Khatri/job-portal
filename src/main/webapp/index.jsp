<%-- 
    Document   : index
    Created on : Feb 28, 2022, 6:51:58 PM
    Author     : MeGa
--%>

<%@page import="com.db.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page - Job Portal</title>
        <%@include file="all_components/all_css.jsp" %>
        <link rel="stylesheet" href="all_components/footer.css"/>
        <style>
            .back-img{
                background: url("img/homepage.jpg");
                width: 100%;
                height: 80vh;
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
    </head>
    <body>
        <%@include file="all_components/navbar.jsp" %>

        <div class="container-fluid back-img">
            <div class="text-center">
                <h1 class="text-white p-4">
                    <i class="fa fa-book" aria-hidden="true"></i> Online Job Portal
                </h1>
            </div>
        </div>
        <%@include file="all_components/footer.jsp" %>
    </body>
</html>
