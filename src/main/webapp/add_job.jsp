<%-- 
    Document   : add_job
    Created on : Mar 1, 2022, 10:19:19 PM
    Author     : MeGa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Job Page - Job Portal</title>
        <%@include file="all_components/all_css.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="all_components/navbar.jsp" %>
        <div class="container p-2">
            <div class="col-md-10 offset-md-1">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center text-success">
                            <i class="fas fa-user-friends fa-3x"></i>
                            <h5>Add Jobs</h5>
                        </div>
                        <form action="addJob" method="post">
                            <div class="form-group">
                                <label>Enter Title</label>
                                <input type="type" name="title" required class="form-control">
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label>Location</label>
                                    <select id="inLineFormCustomSelectPref" name="loation" class="custom-select">
                                        <option selected="">Choose...</option>
                                        <option value="Karachi">Karachi</option>
                                        <option value="Hyderbad">Hyderbad</option>
                                        <option value="Umerkot">Umerkot</option>
                                        <option value="Multan">Multan</option>
                                        <option value="Thatta">Thatta</option>
                                        <option value="Lahore">Lahore</option>
                                        <option value="Islambad">Islambad</option>
                                        <option value="Quatta">Quatta</option>
                                    </select>
                                </div>
                                 <div class="form-group col-md-4">
                                    <label>Category</label>
                                    <select id="inLineFormCustomSelectPref" name="category" class="custom-select">
                                        <option selected="">Category...</option>
                                        <option value="IT">IT</option>
                                        <option value="Java Developer">Java Developer</option>
                                        <option value="Teacher">Teacher</option>
                                        <option value="Banking">Banking</option>
                                    </select>
                                </div>
                                <div class="form-group col-md-4">
                                    <label>Status</label>
                                    <select id="id" class="form-control" name="status">
                                        <option class="Active" value="Active">Active</option>                 
                                        <option class="Inactive" value="Inactive">Inactive</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Enter Description</label>
                                <textarea id="desc" name="desc" rows="6" cols="" class="form-control" required ></textarea>
                            </div>
                            <button class="btn btn-success">Publish Job</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
