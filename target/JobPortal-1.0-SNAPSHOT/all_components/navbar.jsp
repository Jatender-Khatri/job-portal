<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
    <a class="navbar-brand" href="index.jsp">Job Portal</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp"><i class="fa fa-home"></i> Home <span class="sr-only">(current)</span></a>
            </li>
            <c:if test="${userobj.role eq 'admin'}">
                <li class="nav-item">
                    <a class="nav-link" href="add_job.jsp"><i class="fa fa-plus-circle"></i> Post Job</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="view_jobs.jsp"><i class="fa fa-eye"></i> View Job</a>
                </li>

            </c:if>

            <li class="nav-item">
                <a class="nav-link" href="about.jsp"><i class="fa fa-comment"></i> About Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="contact.jsp"><i class="fa fa-user-circle"></i> Contact Us</a>
            </li>

        </ul>
        <form class="form-inline my-2 my-lg-0">
            <c:if test="${userobj.role eq 'admin'}">
                <a href="#" class="btn btn-light mr-1"><i class="fa fa-user"></i> Admin</a>
                <a href="Logout" class="btn btn-light"><i class="fas fa-sign-in-alt"></i> Logout</a>
            </c:if>
            <c:if test="${userobj.role eq 'user'}">
                <a href="#" class="btn btn-light mr-1" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-user"></i> ${userobj.name}</a>
                <a href="Logout" class="btn btn-light"><i class="fas fa-sign-in-alt"></i> Logout</a>
            </c:if>


            <c:if test="${ empty userobj}">
                <a href="login.jsp" class="btn btn-light mr-1"><i class="fa fa-user-friends"></i> Login</a>
                <a href="signup.jsp" class="btn btn-light"><i class="fa fa-user-plus"></i> Join</a>
            </c:if>
        </form>
    </div>
</nav>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
     aria-labelledby= "exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class= "modal-content">
            <div class="modal-header">
                <h5 class="modal-title " id="exampleModallabel">Profile</h5>
                <button type="button" class="close" data-dismiss= "modal"
                        aria-label="close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="card">
                    <div class="card-body">
                        <div class="text-center text-primary">
                            <i class="fas fa-user-circle fa-4x"></i>
                        </div>
                        <table class="table mt-2">
                            <tbody>
                                <tr>
                                    <th scope="row">Name : </th>
                                    <th>${userobj.name }</th>
                                </tr>
                                <tr>
                                    <th scope="row">Qualification : </th>
                                    <th>${userobj.qualification }</th>
                                </tr>
                                <tr>
                                    <th scope="row">Email : </th>
                                    <th>${userobj.email }</th>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">
                    Close
                </button>
                <a href="edit_profile.jsp" class="btn btn-primary">Edit</a>
            </div>
        </div>
    </div>
</div>
