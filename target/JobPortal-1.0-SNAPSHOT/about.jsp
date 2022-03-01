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
        <title>About Website Page - Job Portal</title>
        <%@include file="all_components/all_css.jsp" %>
        <link rel="stylesheet" href="all_components/footer.css"/>
        <link rel="stylesheet" href="all_components/about.css"/>
    </head>
    <body>
        <%@include file="all_components/navbar.jsp" %>
        <section class="team">
            <div class="container-fluid">
                <h1>OUR TEAM</h1>
                <div class="row">
                    <div class="col-md-4 profile text-center">
                        <div class="card">
                            <div class="card-body">
                                <div class="img-box ">
                                    <img src="img/jatenderimage.jpg" class="img-name" />
                                    
                                </div>
                                <h2>Jatender Khatri</h2>
                                <h3>Team Member</h3>
                                <p>I am a Student</p>
                            </div>
                        </div> 
                    </div>
                    <div class="col-md-4 profile text-center">
                        <div class="card">
                            <div class="card-body">
                                <div class="img-box ">
                                    <img src="img/nareshkumar.jpg" class="img-name" />
                                    
                                </div>
                                <h2>Naresh Khatri</h2>
                                <h3>Team Member</h3>
                                <p>I am a Student</p>
                            </div>
                        </div> 
                    </div>
                    <div class="col-md-4 profile text-center">
                        <div class="card">
                            <div class="card-body">
                                <div class="img-box ">
                                    <img src="img/turab.jpg" class="img-name" />
                                    
                                </div>
                                <h2>Turab Bajeer</h2>
                                <h3>Team Member</h3>
                                <p>I am a Student</p>
                            </div>
                        </div> 
                    </div>
                </div>
                
            </div>
        </section>
        <%@include file="all_components/footer.jsp" %>
    </body>
</html>
