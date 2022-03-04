<%-- 
    Document   : more_view
    Created on : Mar 4, 2022, 7:27:59 PM
    Author     : MeGa
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Jobs"%>
<%@page import="java.util.List"%>
<%@page import="com.db.ConnectionProvider"%>
<%@page import="com.dao.JobsDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Job - Job Portal</title>
        <%@include file="all_components/all_css.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp" />
        </c:if>
        <%@include file="all_components/navbar.jsp" %>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-center text-success mt-3">
                        <i class="fas fa-clipboard fa-3x"></i>

                        <h5>All Jobs</h5>
                    </div>
                    <%
                        String location = request.getParameter("loc");
                        System.out.println("Location  " + location);
                        String category = request.getParameter("cat");
                        System.out.println("Category  : " + category);
                        String msg = "";

                        JobsDao dao = new JobsDao(ConnectionProvider.getConnection());
                        List<Jobs> list = null;

                        if ("loc".equals(location) && "cat".equals(category)) {
                            list = new ArrayList<Jobs>();
                            msg = "Job Not Avaiable";
                        } else if ("loc".equals(location) || "cat".equals(category)) {
                            list = dao.getJobsOrLocationAndCategory(category, location);
                        } else {
                            list = dao.getJobsAndLocationAndCategory(category, location);
                        }
                        if (list.isEmpty()) {
                    %>
                    <h1 class="text-center text-danger">Job Not Available</h1>
                    <%
                        }
                        if (list != null) {
                            for (Jobs j : list) {
                    %>
                    <div class="card mt-2">
                        <div class="card-body">
                            <div class="text-center text-primary">
                                <i class="fas fa-clipboard fa-2x"></i>
                            </div>
                            <h6><%= j.getTitle()%></h6>
                            <p><%= j.getDescription()%></p>
                            <br>
                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Location : <%= j.getLocation()%>" readonly>
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Category : <%= j.getCategory()%>" readonly>
                                </div>
                            </div>
                            <h6>Publish Date : <%= j.getPdate().toString()%></h6>
                            <div class="text-center">
                                <a href="one_view.jsp?id=<%= j.getId()%>" class="btn btn-sm bg-success text-white">View More</a>
                            </div>
                        </div>

                    </div>
                    <%
                        }

                    } else {
                    %>
                    <h4 class="text-center text-danger"><%= msg%></h4>
                    <%

                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>
