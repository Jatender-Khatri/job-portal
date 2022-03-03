<%-- 
    Document   : view_jobs
    Created on : Mar 1, 2022, 11:26:16 PM
    Author     : MeGa
--%>

<%@page import="com.model.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.db.ConnectionProvider"%>
<%@page import="com.dao.JobsDao"%>
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
        <c:if test="${userobj.role ne 'admin'}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="text-center text-primary mt-3">All Jobs</h1>
                    <c:if test="${not empty succMsg}">
                        <div class="container text-center">
                            <div class="alert alert-success" role="alert">
                                ${succMsg}
                            </div>
                        </div>
                        <c:remove var="succMsg" />
                    </c:if>
                    <%
                        JobsDao jobsDao = new JobsDao(ConnectionProvider.getConnection());
                        List<Jobs> list = jobsDao.getAllJobs();
                        for (Jobs jobs : list) {%>
                    <div class="card mt-2">
                        <div class="card-body">
                            <div class="text-center text-primary">
                                <i class="fas fa-clipboard fa-2x"></i>
                            </div>

                            <h6><%= jobs.getTitle()%></h6>
                            <p><%= jobs.getDescription()%></p>
                            <br>
                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Location: <%= jobs.getLocation()%>" readonly>
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Category: <%= jobs.getCategory()%>" readonly>
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Status: <%= jobs.getStatus()%>" readonly>
                                </div>
                            </div>
                            <h6>Publish Date: <%= jobs.getPdate()%></h6>
                            <div class="text-center">
                                <a href="edit_job.jsp?id=<%= jobs.getId()%>" class="btn btn-sm bg-success text-white">Edit</a>
                                <a href="delete?id=<%= jobs.getId()%>" class="btn btn-sm bg-danger text-white">Delete</a>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>

                </div>
            </div>
        </div>
    </body>
</html>
