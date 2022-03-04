<%-- 
    Document   : edit_profile
    Created on : Mar 4, 2022, 11:22:15 PM
    Author     : MeGa
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile Page - Jobs Portal</title>
        <%@include file="all_components/all_css.jsp" %>
    </head>
    <body style="background-color: #f0f1f2">
        <c:if test="${empty userobj }">
            <c:redirect url="login.jsp" />
        </c:if>
        <%@include file="all_components/navbar.jsp" %>
        <div class="container-fluid">
            <div class="row p-4">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="text-center">
                                <i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
                                <h5>Edit Profile</h5>
                            </div>
                            <form action="update_profile">
                                <input type="hidden" name="id" value="${userobj.id}">
                                <div class="form-group">
                                    <label>Enter Full Name</label>
                                    <input type="text" required class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" name="name" value="${userobj.name}">
                                </div>
                                <div class="form-group">
                                    <label>Enter Qualification</label>
                                    <input type="text" required class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" name="qua" value="${userobj.qualification}">
                                </div>
                                <div class="form-group">
                                    <label>Enter Email</label>
                                    <input type="email" required class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" name="email" value="${userobj.email}">
                                </div>
                                <div class="form-group">
                                    <label>Enter Password</label>
                                    <input type="password" required class="form-control" id="exampleInputEmail" aria-describedby="emailHelp" name="password" value="${userobj.password}">
                                </div>
                                <button type="submit" class="btn btn-primary badge-pill btn-block">Update</button>
                            </form>
                        </div>  
                    </div>   
                </div>       
            </div>
        </div>
    </body>
</html>
