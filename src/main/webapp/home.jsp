<%-- 
    Document   : home
    Created on : Mar 4, 2022, 6:23:07 PM
    Author     : MeGa
--%>
<%@page import="com.model.Jobs"%>
<%@page import="com.dao.JobsDao"%>
<%@page import="com.model.Category"%>
<%@page import="com.dao.CategoryDao"%>
<%@page import="com.model.Location"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.LocationDao"%>
<%@page import="com.db.ConnectionProvider"%>
<%@page import="com.db.ConnectionProvider"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User - Jobs Portal</title>
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

                        <h1>View Jobs</h1>
                        <c:if test="${not empty succMsg}">
                            <div class="container text-center">
                                <div class="alert alert-success" role="alert">
                                    ${succMsg}
                                </div>
                            </div>
                            <c:remove var="succMsg" />
                        </c:if>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <form action="more_view.jsp" class="form-inline" method="get">
                                <div class="form-group col-md-5 mt-1">

                                    <h5>Location</h5>
                                </div>
                                <div class="form-group col-md-4 mt-1">
                                    <h5>Category</h5>
                                </div>
                                <div class="form-group col-md-5">
                                    <select id="inLineFormCustomSelectPref" name="loc" class="custom-select">
                                        <option selected="" disabled>Choose...</option>
                                        <%
                                            LocationDao ld = new LocationDao(ConnectionProvider.getConnection());

                                            List<Location> l = null;
                                            l = ld.getAllLocation();
                                            for (Location l1 : l) {
                                        %>
                                        <option value="<%= l1.getlName()%>"><%= l1.getlName()%></option>
                                        <%
                                            }
                                        %> 

                                    </select>
                                </div>
                                <div class="form-group col-md-5">
                                    <select id="inLineFormCustomSelectPref" name="cat" class="custom-select">
                                        <option selected="" disabled>Choose...</option>

                                        <%
                                            CategoryDao d = new CategoryDao(ConnectionProvider.getConnection());

                                            List<Category> c = null;
                                            c = d.getAllCategory();
                                            for (Category c1 : c) {
                                        %>
                                        <option value="<%= c1.getName()%>"><%= c1.getName()%></option>
                                        <%
                                            }
                                        %> 
                                    </select>
                                </div>
                                <button class="btn btn-success">Search</button>
                            </form>

                        </div>
                    </div>
                    <%
                        JobsDao dao = new JobsDao(ConnectionProvider.getConnection());
                        List<Jobs> list = dao.getAllJobsForUser();
                        for (Jobs jobs : list) {
                    %>
                    <div class="card mt-2">
                        <div class="card-body">
                            <div class="text-center text-primary">
                                <i class="fas fa-clipboard fa-2x"></i>
                            </div>
                            <h6><%= jobs.getTitle()%></h6>
                            <%
                                if (jobs.getDescription().length() > 0 && jobs.getDescription().length() <= 120) {
                            %>
                            <p><%= jobs.getDescription()%></p>
                            <%
                            } else {
                            %>
                            <p><%= jobs.getDescription().substring(0, 120)%></p>
                            <%
                                }
                            %>
                            <br>
                            <div class="form-row">
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Location : <%= jobs.getLocation()%>" readonly>
                                </div>
                                <div class="form-group col-md-3">
                                    <input type="text" class="form-control form-control-sm" value="Category : <%= jobs.getCategory()%>" readonly>
                                </div>
                            </div>
                            <h6>Publish Date : <%= jobs.getPdate().toString()%></h6>
                            <div class="text-center">
                                <a href="one_view.jsp?id=<%= jobs.getId()%>" class="btn btn-sm bg-success text-white">View More</a>
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
