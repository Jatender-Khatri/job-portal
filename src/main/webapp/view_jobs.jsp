<%-- 
    Document   : view_jobs
    Created on : Mar 1, 2022, 11:26:16 PM
    Author     : MeGa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Jobs Page - Job Portal</title>
        <%@include file="all_components/all_css.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="all_components/navbar.jsp" %>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="text-center text-primary mt-3">All Jobs</h1>
                    <div class="card mt-2">
                        <div class="card-body">
                            <div class="text-center text-primary">
                                <i class="fas fa-clipboard fa-2x"></i>
                            </div>
                            <h6>Title</h6>
                            <p>Description</p>
                            <br>
                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Location:" readonly>
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Category:" readonly>
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Status:" readonly>
                                </div>
                            </div>
                            <h6>Publish Date: 2021-06-31</h6>
                            <div class="text-center">
                                <a href="#" class="btn btn-sm bg-success text-white">Edit</a>
                                <a href="#" class="btn btn-sm bg-danger text-white">Delete</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
