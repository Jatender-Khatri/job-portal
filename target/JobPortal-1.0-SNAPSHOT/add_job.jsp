<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<%@page import="com.model.Location"%>
<%@page import="com.dao.LocationDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.db.ConnectionProvider"%>
<%@page import="com.dao.CategoryDao"%>
<%@page import="com.model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Job Page - Job Portal</title>
        <%@include file="all_components/all_css.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <c:if test="${userobj.role ne 'admin'}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        <%@include file="all_components/navbar.jsp" %>
        <div class="container p-2">
            <div class="col-md-10 offset-md-1">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center text-success">
                            <c:if test="${not empty succMsg}">
                                <div class="container text-center">
                                    <div class="alert alert-success" role="alert">
                                        ${succMsg}
                                    </div>
                                </div>
                                <c:remove var="succMsg" />
                            </c:if>
                            <i class="fas fa-user-friends fa-3x"></i>

                            <h5>Add Jobs</h5>
                        </div>
                        <form action="add_Job" method="post">
                            <div class="form-group">
                                <label>Enter Title</label>
                                <input type="text" name="title" required class="form-control">
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label>Location</label>
                                    <select id="inLineFormCustomSelectPref" name="location" class="custom-select">
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
                                <div class="form-group col-md-4">
                                    <label>Category</label>
                                    <select id="inLineFormCustomSelectPref" name="category" class="custom-select">
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
                                <textarea id="desc" name="desc" rows="6"  class="form-control" required ></textarea>
                            </div>
                            <div class="text-center">
                                <button class="btn btn-success">Publish Job</button>
                            </div>
                            <!--<button class="btn btn-success text-center">Publish Job</button>-->
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
